// Move based on the global velocity
x -= global.velocity * 0.15;

// Wrap around the screen edges
move_wrap(true,true,636);