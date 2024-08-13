// Create Event

// Initialize the emission timer and rate
emission_timer = 0;
emission_rate = 2; // Number of particles to emit each frame
steam_emitted = false; // Flag to control one-time steam emission
previous_score = 0;
var c_lightgray = make_color_rgb(192, 192, 192); // Custom light gray color (RGB: 192, 192, 192)

// Ensure the particle system is created
if (!variable_global_exists("Par_Steam")) {
    global.ps_sparks = part_system_create();
}

// Create a particle type within the system if not already defined
if (!variable_global_exists("Par_Steam")) {
    global.Par_SteamType = part_type_create();
    part_type_shape(global.Par_SteamType, pt_shape_cloud); // Example shape, adjust as needed
    part_type_size(global.Par_SteamType, 0.5, 1, 0, 0);
    part_type_color3(global.Par_SteamType, c_white, c_lightgray, c_gray);
    part_type_alpha3(global.Par_SteamType, 0.5, 1, 0); // Fades in, stays opaque, then fades out
    part_type_life(global.Par_SteamType, 60, 120); // Lifespan of the particles
    part_type_speed(global.Par_SteamType, 0.1, 0.5, 0, 0); // Slow-moving steam
    part_type_direction(global.Par_SteamType, -183, -28, 0, 0); // Mostly upwards
    part_type_gravity(global.Par_SteamType, -0.02, 270); // Light upwards gravity to simulate rising
}
