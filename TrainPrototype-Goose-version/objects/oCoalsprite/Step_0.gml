// Declare a local variable to hold the time when space was last pressed
if (!variable_instance_exists(id, "time_space_pressed")) {
    time_space_pressed = 0;
}

// Check if the spacebar is pressed
if (keyboard_check_pressed(vk_space)) {
    // Set the image_index to 1 and record the current time
    image_index = 1;
    time_space_pressed = current_time;
} else {
    // Check if less than 1000 milliseconds (1 second) have passed since space was pressed
    if (current_time - time_space_pressed < 300) {
        image_index = 1;  // Keep image_index at 1 for 1 second
    } else {
        image_index = 0;  // Revert to image_index 0 after 1 second
    }
}
