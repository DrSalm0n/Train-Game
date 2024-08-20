
if (global.current_distance < global.total_distance * global.min_range) {
    global.stopped = false;
}

if (!global.stopped) {
    if (global.current_distance >= global.total_distance * global.min_range && global.current_distance <= global.total_distance * global.max_range) {
        // Move the warning object with the train's velocity
        x -= global.velocity;

        // Wrap around screen edges
        if (x < -sprite_width) {
            x = room_width;
        }

        var train_instance = instance_find(oTrain, 0);
        if (train_instance != noone) {
            var chimney_x = train_instance.x + 160; // Adjust the offset to match the train's chimney
            var chimney_y = train_instance.y + 100;

            // Spawn particles relative to the train's position
            var emission_rate = 7; // Number of particles to emit
            part_particles_create(global.ps_sparks, chimney_x, chimney_y, global.Par_Sparks, emission_rate);
        }

    } 
}
