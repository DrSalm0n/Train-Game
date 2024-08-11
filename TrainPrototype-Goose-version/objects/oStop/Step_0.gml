// Check if current distance is about 95% of total distance and the station hasn't appeared yet
if (global.current_distance >= global.total_distance * global.station) {
    x -= global.velocity;

    // Wrap around screen edges for the first object
    if (x < -sprite_width) {
        x = room_width; // Reappear on the right side of the screen
        global.current_distance = 0; // Reset the current distance to 0 for the new round
    }
}

if (global.reset) {
    x = room_width; // Reset the station position
    global.reset = false; // Clear the reset flag
}

if (place_meeting(x, y, oTrain) && global.velocity == 0) {
    global.at_stop = true;
} else {
    global.at_stop = false;
}
