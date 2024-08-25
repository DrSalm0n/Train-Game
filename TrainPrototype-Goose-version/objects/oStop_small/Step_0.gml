//step event for the stop_small
// Check if current distance is about 95% of total distance and the station hasn't appeared yet
if (global.current_distance >= global.total_distance * global.station) {
	x -= global.velocity;
}


if (place_meeting(x, y, oTrain) && global.velocity == 0.1) {
    global.at_stop_small = true;
} else {
	global.at_stop_small = false;
}


// Handle scoring
if (global.at_stop_small && global.score_token) {
    global.score += 50;
	oCoal.coal += 50;
}

// Handle global reset to reposition stations
if (global.reset) {
    x = 1114; // Reset position to the initial starting point
}
