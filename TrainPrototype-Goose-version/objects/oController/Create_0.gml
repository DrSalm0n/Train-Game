// Initialize global variables
global.total_distance = 10000;
global.current_distance = 0;
global.velocity = 0; // Initial velocity
global.max_velocity= 25;
global.acceleration = 1.75; // Amount to increase the velocity
global.deceleration = 0.05;

global.station = 0.95;
global.at_stop = false;
global.score = 0;

//debuf variables
global.min_range = 0.70;//distance when the player cannot accelerate more
global.max_range = 0.90;
global.stopped = false;
global.at_warning_zone = false;
global.reset= false;
global.allow_movement = true;




score_token = true;

surface_resize(application_surface, 634, 360);

window_set_size(634 * 2, 360 * 2);

window_center();
