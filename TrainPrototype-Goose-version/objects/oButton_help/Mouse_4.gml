
// Inherit the parent event
event_inherited();

if (instance_exists(oControls)){
	instance_destroy(oControls);
}

else{
	instance_create_layer(room_width / 2, room_height - 50, "Instances", oControls);
}