/// @description Insert description here
// You can write your code in this editor
coal = 50;
global.coal = coal;

// Create the particle system
global.ps_smoke = part_system_create();
// Define light gray color
var c_lightgray = make_color_rgb(132, 132, 132);

coal = global.coal;

// Create the smoke particle type
global.pt_smoke = part_type_create();
part_type_shape(global.pt_smoke, pt_shape_disk);
part_type_size(global.pt_smoke, 0.7, 1, 0.01, 0);
part_type_color3(global.pt_smoke, c_gray, c_lightgray, c_white);
//part_type_blend(global.pt_smoke, true); 
part_type_alpha3(global.pt_smoke, 0.5, 1, 0.3);
part_type_life(global.pt_smoke, 60, 120);
part_type_speed(global.pt_smoke, 0.2, 0.4, 0, 0);
part_type_direction(global.pt_smoke, 85, 95, 0, 0);
part_type_gravity(global.pt_smoke, 0, 90); // Start with no gravity
