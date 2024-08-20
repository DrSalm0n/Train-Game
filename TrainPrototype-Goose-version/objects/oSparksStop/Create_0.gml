
// Check if the particle system doesn't exist, then create it
if (!variable_global_exists("ps_sparks")) {
    global.ps_sparks = part_system_create();
}

// Create the particle type if it doesn't already exist
if (!variable_global_exists("Par_Sparks")) {
    global.Par_Sparks = part_type_create();
    part_type_shape(global.Par_Sparks, pt_shape_pixel);
    part_type_size(global.Par_Sparks, 2, 2, 0, 2);
    part_type_color3(global.Par_Sparks, c_yellow, c_red, c_gray);
    part_type_alpha3(global.Par_Sparks, 1, 1, 0.5);
    part_type_life(global.Par_Sparks, 20, 40);
    part_type_speed(global.Par_Sparks, 3, 5, 0, 0);
    part_type_direction(global.Par_Sparks, 93, 181, 0, 0);
}
