// Get the width of the game window
var screen_width = window_get_width();

// Calculate the midpoint of the screen
var screen_midpoint = screen_width / 2;

// Get the current mouse x position
var mouse_x_position = mouse_x;

// Determine the current side of the screen the mouse is on
var current_mouse_side = "";

if (mouse_x_position < screen_midpoint) {
    current_mouse_side = "left";
} else {
    current_mouse_side = "right";
}

// Check if the mouse has moved to a different side
if (current_mouse_side != last_mouse_side) {
    // Print message depending on the new side
    if (current_mouse_side == "left") {
        show_debug_message("Mouse moved to the left side of the screen");
    } else if (current_mouse_side == "right") {
        show_debug_message("Mouse moved to the right side of the screen");
    }

    // Update the last known mouse side
    last_mouse_side = current_mouse_side;
}

