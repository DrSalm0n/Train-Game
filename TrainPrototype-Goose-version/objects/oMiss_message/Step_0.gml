if (global.velocity == 0 && global.at_warning_zone && !place_meeting(oTrain.x, oTrain.y, oStop)) {
    if (alarm[0] == -1) { // Check if the alarm is not already set
        visible = true;   // Make the object visible
        alarm[0] = display_duration; // Set the alarm for the duration
    }
}