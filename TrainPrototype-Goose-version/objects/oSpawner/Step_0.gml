if(rand_dist <= global.current_distance && time <= 0 && oWhistle.pass == false)
{
instance_create_depth(x, 235, depth, oAnimal);
randomize();
time = irandom_range(240,360);
rand_dist = irandom_range((global.current_distance)+ 1500, (global.current_distance) + 4000);
}


if(rand_dist <= global.current_distance+1000)
time--;