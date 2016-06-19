///scr_get_input
up_key = keyboard_check(ord("W"));
left_key = keyboard_check(ord("A"));
down_key = keyboard_check(ord("S"));
right_key = keyboard_check(ord("D"));

// Check for gamepad input
if (gamepad_is_connected(0)) {
    up_key = (gamepad_axis_value(0, gp_axislv) <= -.5);
    left_key = (gamepad_axis_value(0, gp_axislh) <= -.5);
    down_key = (gamepad_axis_value(0, gp_axislv) >= .5);
    right_key = (gamepad_axis_value(0, gp_axislh) >= .5);
}
