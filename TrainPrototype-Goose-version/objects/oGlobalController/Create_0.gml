#macro ResWidth 634
#macro ResHeight 360

// Set the application surface size to match the display
surface_resize(application_surface, ResWidth, ResHeight);

// Set the window size to match the display
window_set_size(ResWidth * 2, ResHeight * 2);

window_center();


// Move to next room
room_goto_next();