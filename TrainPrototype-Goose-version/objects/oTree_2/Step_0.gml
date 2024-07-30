 // Move based on the global velocity
x -= global.velocity;

// Wrap around the screen edges
move_wrap(true,true,random_range(80, 300));
