global.animal_distance = 0;
weight = 0;
time = 0;
timer = 10;
randomise();

time = timer;
rand_sprite = irandom(4);

// Choose sprite
switch(rand_sprite) {
    case 0:
        sprite_index = SPR_Animal1;
        weight = 10;
        break;
    case 1:
        sprite_index = SPR_Animal2;
        weight = 13;
        break;
    case 2:
        sprite_index = SPR_Animal3;
        weight = 8;
        break;
    case 3:
        sprite_index = SPR_Animal4;
        weight = 18;
        break;
}

part_system = part_system_create();
part_type = part_type_create();

part_type_shape(part_type, pt_shape_line); // Shape of the particles
part_type_size(part_type, 0.5, 1, 0, 0); // Size of the particles
part_type_color1(part_type, c_red); // Color of the particles
part_type_alpha2(part_type, 1, 0); // Fade out particles
part_type_speed(part_type, 2, 5, 0, 0); // Speed of the particles
part_type_direction(part_type, 0, 360, 0, 0); // Direction of the particles
part_type_life(part_type, 30, 50); // Life span of the particles
part_type_gravity(part_type, 0.2, 270); // Gravity on the particles, 0.2 strength, 270 degrees (downward)
part_type_orientation(part_type, 0, 0, 0, 0, 1);


// Function to delete if outside the left side of the screen
function delete_if_outside_left(obj) {
    if (obj.x < 0 - obj.sprite_width) {
        instance_destroy(obj);
    }
}