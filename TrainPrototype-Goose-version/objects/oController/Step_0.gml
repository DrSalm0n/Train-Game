// Initialize total_distance if the current_distance is 0 and not in a reset state
if (global.current_distance == 0 && !global.reset && !global.at_stop) {
    global.total_distance = random_range(10000, 20000);
}

if (global.current_distance < global.total_distance * global.min_range || global.at_stop){
		global.allow_movement = true;
}
else { global.allow_movement = false; }
if (place_meeting(x, y, oStop)){
	global.allow_movement = true;
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
if (global.velocity == 0 && global.at_warning_zone && !global.at_stop) {
    global.reset = true;
	if (instance_exists(oWarning)) {
    oWarning.x = room_width + oWarning.sprite_width;
	}
	
	global.current_distance = 0;
    
} else if (global.reset && global.velocity > 0) {
    global.reset = false; // Clear the reset flag once movement resumes
}

// Handle scoring
if (global.at_stop && score_token) {
    global.score += 100;
    score_token = false;
}

if (global.current_distance < global.total_distance * 0.3 && !score_token) {
    score_token = true;
}


