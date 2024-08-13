time--;
x -= global.velocity;
if(place_meeting(x,y,oTrain)) {
	global.velocity -= weight;
instance_destroy();
}