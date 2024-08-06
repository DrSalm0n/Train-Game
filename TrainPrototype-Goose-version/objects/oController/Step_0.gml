if (global.current_distance == 0){
	global.total_distance = random_range(10000, 20000);
}

// Check if space is pressed
if (keyboard_check(vk_space)) {
    global.velocity += global.acceleration;
	if (global.velocity > global.max_velocity){
		global.velocity = global.max_velocity;
	}
} else {
    global.velocity -= global.deceleration;
}

// Clamp velocity to be non-negative
global.velocity = max(global.velocity, 0);

// Update current distance
global.current_distance += global.velocity;

if(global.at_stop == true && score_token= true){
	global.score += 100;
	score_token = false;
}

if (global.current_distance < global.total_distance * 0.3 && !score_token){
	score_token = true;
}