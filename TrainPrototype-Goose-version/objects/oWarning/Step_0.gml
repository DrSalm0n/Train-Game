// Step Event

// Check if current distance is about 95% of total distance and the station hasn't appeared yet
if (global.current_distance >= global.total_distance * timetillstop) {
    // Move the object leftwards
    x -= global.velocity;
    
    // Update visibility based on position
    if (x > room_width || x < -sprite_width) {
        visible = false; // Object is off-screen, so make it invisible
    } else {
        visible = true;  // Object is within the screen bounds, so make it visible
    }

    // Wrap around screen edges (optional based on your game logic)
    if (x < -sprite_width) {
        x = room_width + sprite_width; // Reappear off-screen to the right
    }
	if (global.station_moving = true) {
	
	visible=false;
	
	}
}


