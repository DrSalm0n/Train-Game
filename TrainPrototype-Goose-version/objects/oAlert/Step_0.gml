// Step Event
if (global.current_distance >= global.total_distance * 0.60 && display_token == true) {
	
    if (alarm[0] == -1) { // Check if the alarm is not already set
        visible = true;   // Make the object visible
        alarm[0] = display_duration; // Set the alarm for the duration
    }
}

//display token is to make sure the alert doesn't appear infinitely when the current 
//distance is more than the (this can change) 70% of the total distance
if (global.current_distance >= global.total_distance * 0.71){
	display_token = false;
}

if (global.current_distance == 0){
	display_token = true;
}         