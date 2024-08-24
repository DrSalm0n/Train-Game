//step event for the main controller.

// Initialize total_distance if the current_distance is 0 and not in a reset state
if (global.current_distance == 0 && !global.at_stop) {
    global.total_distance = random_range(10000, 20000);
}

if (global.reset){
	if (global.current_distance > global.total_distance * global.min_range ){
		global.allow_movement = false;
		global.reset = false;
	}
}


// Check if space is pressed
if (keyboard_check_pressed(vk_space)) {
    if (global.allow_movement) {
        global.at_warning_zone = false;
        global.velocity += global.acceleration;
        if (global.velocity > global.max_velocity) {
            global.velocity = global.max_velocity;
        }
    } else {
        global.at_warning_zone = true;
    }
} else {
    global.velocity -= global.deceleration;
}

// Clamp velocity to be non-negative
global.velocity = max(global.velocity, 0);

// Update current distance
global.current_distance += global.velocity;

// Check for reset condition

