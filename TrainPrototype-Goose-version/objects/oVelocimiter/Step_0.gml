// Convert the global velocity to angular velocity for the arrow
var velocity_ratio = global.velocity / global.max_velocity; // Calculate the ratio of current speed to max speed
current_angle = 90 - (velocity_ratio * 180); // Map this ratio to the angle range (-90 to 90 degrees)

// Clamp the angle to ensure it doesn't exceed the range
current_angle = clamp(current_angle, -90, 90);

// Apply the rotation to the arrow object
image_angle = current_angle;
