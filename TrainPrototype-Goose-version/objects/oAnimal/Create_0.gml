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
	sprite_index = sAnimal1;
	weight = 12;
	break;
	case(1):
	sprite_index = sAnimal2;
	weight = 15;
	break;
	case(2):
	sprite_index = sAnimal3;
	weight = 10;
	break;
	case(3):
	sprite_index = sAnimal4;
	weight = 20;
	break;
}
