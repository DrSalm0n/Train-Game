
// Check if the train has stopped at a station and the steam has not been emitted yet
if (previous_score != global.station && emission_timer < 0) {
    emission_timer = 30; // Set the timer for 30 frames (0.5-second burst of steam)
    steam_emitted = true; // Set the flag to prevent re-triggering the steam
	previous_score = global.score; 
}

// Handle particle emission if the timer is active
if (emission_timer > 0) {
    // Define the top-left corner of the rectangle where steam should appear
    var rect_x = x + 70; // Adjust the starting X position of the rectangle
    var rect_y = y + 170; // Adjust the starting Y position of the rectangle

    // Loop through each particle emission
    for (var i = 0; i < emission_rate; i++) {
        // Randomly pick a position within the rectangle
        var emission_x = rect_x + irandom_range(0, 71); // Random X position within the rectangle
        var emission_y = rect_y + irandom_range(0, 20); // Random Y position within the rectangle

        // Emit the particle using the existing particle type
        part_particles_create(global.ps_sparks, emission_x, emission_y, global.Par_SteamType, 1);
    }

    // Decrease the timer by 1 each frame
    emission_timer--;
}

// Reset the steam_emitted flag when the train starts moving again
if (!global.at_stop && steam_emitted) {
    steam_emitted = false;
}
