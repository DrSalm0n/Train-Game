time--;
x -= global.velocity;
if(place_meeting(x,y,oTrain)) {
	global.velocity -= weight;
instance_destroy();
oWhistle.pass = false;
}
if(oWhistle.pass == true && oSpawner.time <= 120)
{
instance_destroy();	
oSpawner.difficulty *= 1.08;
oWhistle.pass = false;
}

delete_if_outside_left(self);