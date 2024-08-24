//step event for the stop
// Check if current distance is about 95% of total distance and the station hasn't appeared yet
if (global.current_distance >= global.total_distance * global.station) {
    x -= global.velocity;

    // Wrap around screen edges for the first object
    if (x < -sprite_width) {
        x = room_width; // Reappear on the right side of the screen
        global.current_distance = 0; // Reset the current distance to 0 for the new round
		global.reset = true;
		global.score_token = true;
    }
}


if (place_meeting(x, y, oTrain) && global.velocity == 0.1) {
    global.at_stop = true;
} else {
	global.at_stop = false;
}


if (global.velocity == 0 && global.at_warning_zone) {
    global.score_token = false;	
	global.allow_movement = true;   
}

// Handle scoring
if (global.at_stop && global.score_token) {
    global.score += 100;
	oCoal.coal += 100;
    global.score_token = false;
}