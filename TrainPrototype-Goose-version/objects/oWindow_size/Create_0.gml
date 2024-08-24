
var display_width = display_get_width();
var display_height = display_get_height();

// Set the application surface size to match the display
surface_resize(application_surface, display_width, display_height);

// Set the window size to match the display
window_set_size(display_width, display_height);

window_center();

window_set_fullscreen(true);