// Check if space is pressed
if (keyboard_check(vk_space)) {
    global.velocity += global.acceleration;
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