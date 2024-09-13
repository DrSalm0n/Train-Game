//step event for the stop_mid
// Check if current distance is about 95% of total distance and the station hasn't appeared yet
if (global.current_distance >= global.total_distance * global.station) {
	x -= global.velocity;
}

if (place_meeting(x, y, oTrain) && global.velocity <= 0.1) {
    global.at_stop_mid = true;
} else {
	global.at_stop_mid = false;
}

// Handle scoring
if (global.at_stop_mid && global.score_token) {
    global.score += 50;
	oCoal.coal += 25;
}

// Handle global reset to reposition stations
if (global.reset) {
    x = 954; // Reset position to the initial starting point
}