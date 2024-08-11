// Step Event

// Handle movement and wrapping of the warning object
if (global.current_distance < global.total_distance * global.min_range){
	global.stopped = false;
}


if (!global.stopped) {
    if (global.current_distance >= global.total_distance * global.min_range && global.current_distance <= global.total_distance * global.max_range) {
        x -= global.velocity;

        // Wrap around screen edges
        if (x < -sprite_width) {
            x = room_width;
        }
    } else if (global.current_distance > global.total_distance * global.max_range) {
        x -= global.velocity;

        // Wrap around screen edges
        if (x < -sprite_width ) {
            x = room_width + sprite_width;
            global.stopped = true; // Indicate the warning object has reached the stopped state
        }
    }
}