// Initialize rotation variables
current_angle = 90;                   // Start angle so the arrow points to the left
angular_velocity = global.velocity;                  // Starting angular velocity
angular_acceleration = global.acceleration*0.08;            // Rate of increase of angular velocity
max_angular_velocity = 10;             // Maximum angular velocity
angular_deceleration = global.deceleration*0.05;            // Rate of decrease of angular velocity
