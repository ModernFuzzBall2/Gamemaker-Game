///scr_get_input
right_key = max(keyboard_check_pressed(vk_right),keyboard_check_pressed(ord("D")),0);
left_key = max(keyboard_check_pressed(vk_left),keyboard_check_pressed(ord("A")),0);
up_key = max(keyboard_check_pressed(vk_up),keyboard_check_pressed(ord("W")),0);
down_key = max(keyboard_check_pressed(vk_down),keyboard_check_pressed(ord("S")),0);
jump_key = max(keyboard_check_pressed(vk_up),keyboard_check_pressed(ord("W")),keyboard_check_pressed(vk_space),0);
attack_key = keyboard_check_pressed(vk_shift);
enter_key = keyboard_check_pressed(vk_enter);
pause_key = keyboard_check_pressed(vk_escape);

// Get the axis
xaxis = (right_key - left_key);
yaxis = (down_key - up_key);

// Check for gamepad input
if (gamepad_is_connected(0)) {
    gamepad_set_axis_deadzone(0, .35);
    xaxis = gamepad_axis_value(0, gp_axislh);
    yaxis = gamepad_axis_value(0, gp_axislv);
    jump_key = gamepad_button_check_pressed(0, gp_face1);
    attack_key = gamepad_button_check_pressed(0, gp_face3);
    pause_key = gamepad_button_check_pressed(0, gp_start);
}
