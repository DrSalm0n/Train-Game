//step event

// Check if current distance is about 95% of total distance and the station hasn't appeared yet
if (global.current_distance >= global.total_distance * timetillstop) {
    x -= global.velocity;

    // Wrap around screen edges for the first object
    if (x < -sprite_width) {
        x = room_width; // Reappear on the right side of the screen
    }
}
