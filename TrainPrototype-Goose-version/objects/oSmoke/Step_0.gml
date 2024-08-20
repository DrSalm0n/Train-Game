// Assuming the train object is called 'oTrain'
var train_instance = instance_find(oTrain, 0); // Find the train instance

if (train_instance != noone) {
    x = train_instance.x;
    y = train_instance.y;
}

// Calculate the chimney position relative to the train
var chimney_x = x + 150;
var chimney_y = y - 0;

// Adjust the speed and direction based on velocity
var smoke_speed = global.velocity /2;
var smoke_direction = 180; // 180 degrees to move left

// Set up vertical gravity
var smoke_gravity = 0.02; // Adjust gravity based on velocity

// Update particle type to simulate movement with gravity
part_type_speed(global.pt_smoke, smoke_speed, smoke_speed, 0, 0);
part_type_direction(global.pt_smoke, smoke_direction, smoke_direction, 0, 0);
part_type_gravity(global.pt_smoke, smoke_gravity, 90); // 270 degrees is downward

// Emit particles based on velocity
if (!global.at_warning_zone) { 
    // Check if the space key is pressed and coal is not zero
    if (keyboard_check_pressed(vk_space) && coal != 0) {
        var emission_rate = 1; // Emit only one particle
        part_particles_create(global.ps_smoke, chimney_x, chimney_y, global.pt_smoke, emission_rate);
    }
}

