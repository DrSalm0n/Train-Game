/// @description Insert description here
// You can write your code in this editor
// Step Event

// Increment the timer
blink_timer += 2;

// Toggle visibility based on the interval
if (blink_timer >= blink_interval) {
    // Toggle the visibility state
    is_visible = !is_visible;
    
    // Apply the visibility state
    if (is_visible) {
        visible = true;  // Make the object visible
    } else {
        visible = false; // Make the object invisible
    }
    
    // Reset the timer
    blink_timer = 0;
}