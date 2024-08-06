// Initialize global variables
global.total_distance = 10000;
global.current_distance = 0;
global.velocity = 0; // Initial velocity
global.max_velocity= 25;
global.acceleration = 0.2; // Amount to increase the velocity
global.deceleration = 0.08;

global.at_stop = false;
global.score = 0;

score_token = true;

surface_resize(application_surface, 634, 360);

window_set_size(634 * 2, 360 * 2);

window_center();
