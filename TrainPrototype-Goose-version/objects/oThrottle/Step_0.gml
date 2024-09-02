// Get the width and height of the game window
var screen_width = window_get_width();
var screen_height = window_get_height();

// Calculate the midpoint of the screen (if needed)
var screen_midpoint_x = screen_width / 2;
var screen_midpoint_y = screen_height / 2;

// Get the current mouse x and y positions
var mouse_x_position = mouse_x;
var mouse_y_position = mouse_y;

// Determine the angle between the lever and the mouse position
var delta_x = mouse_x_position - x; // x is the x-position of the lever
var delta_y = mouse_y_position - y; // y is the y-position of the lever

// Calculate the angle in degrees
var angle_to_mouse = point_direction(x, y, mouse_x_position, mouse_y_position)-90;

// Set the lever's image angle to point towards the mouse
image_angle = angle_to_mouse;

// Determine the current side of the screen the mouse is on
var current_mouse_side = "";

if (mouse_x_position < screen_midpoint_x) {
    current_mouse_side = "left";
} else {
    current_mouse_side = "right";
}

// Check if the mouse has moved to a different side
if (current_mouse_side != last_mouse_side) {
    // Print message depending on the new side
    if (current_mouse_side == "left") {
        show_debug_message("Mouse moved to the left side of the screen");
		global.deceleration = 0.1;
    } else if (current_mouse_side == "right") {
        show_debug_message("Mouse moved to the right side of the screen");
		global.deceleration = 0.03;
    }

    // Update the last known mouse side
    last_mouse_side = current_mouse_side;
}
