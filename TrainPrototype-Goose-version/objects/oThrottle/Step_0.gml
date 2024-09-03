// Step Event

if (keyboard_check_pressed(vk_right)) {
    if (angle_state != -1) {
        angle_state = -1;
        image_angle = -45;
		global.deceleration = 0.03;
		show_debug_message("train deceleration");
    }
}

if (keyboard_check_pressed(vk_left)) {
    if (angle_state != 1) {
        angle_state = 1;
        image_angle = 45;
		global.deceleration = 0.1;
		show_debug_message("train in neutral");
    }
}
