time--;
x -= global.velocity;

if (place_meeting(x, y, oTrain)) {
    global.velocity -= weight;
    
    // Create particle explosion
    part_emitter = part_emitter_create(part_system);
    part_emitter_region(part_system, part_emitter, x - 10, x + 10, y - 10, y + 10, ps_shape_rectangle, ps_distr_linear);
    part_emitter_burst(part_system, part_emitter, part_type, 50); 
    
    // Destroy the instance after creating the particles
    instance_destroy();
    
    oWhistle.pass = false;
}

if (oWhistle.pass == true && oSpawner.time <= 120) {
    instance_destroy();
    oSpawner.difficulty *= 1.08;
    oWhistle.pass = false;
    global.score += 10;
}

delete_if_outside_left(self);