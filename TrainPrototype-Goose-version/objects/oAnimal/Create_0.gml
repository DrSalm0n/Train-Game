global.animal_distance = 0;
weight = 0;
time = 0;
timer = 200;
randomise();

time = timer;
rand_sprite = irandom(4)

//chooses sprite
switch(rand_sprite)
{
	case(0):
	sprite_index = SPR_Animal1;
	weight = 10;
	break;
	case(1):
	sprite_index = SPR_Animal2;
	weight = 13;
	break;
	case(2):
	sprite_index = SPR_Animal3;
	weight = 8;
	break;
	case(3):
	sprite_index = SPR_Animal4;
	weight = 18;
	break;
}


function delete_if_outside_left(obj) {
    // Check if the object is outside the left side of the screen
    if (obj.x < 0 - obj.sprite_width) {
        // Destroy the object
        instance_destroy(obj);
		
    }
}