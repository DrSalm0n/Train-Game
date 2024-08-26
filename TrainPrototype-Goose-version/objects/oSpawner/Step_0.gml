if(rand_dist <= global.current_distance && time <= 0 && oWhistle.pass == false && global.allow_movement && global.velocity >= 7)
{
instance_create_depth(x, 235, depth, oAnimal);
randomize();
time = irandom_range(240,360);
rand_dist = irandom_range((global.current_distance)+ 1500, (global.current_distance) + 4000);
}


if(rand_dist <= global.current_distance+1500) {
time--;
show_debug_message($"Time: {time}, Pass: {oWhistle.pass}, distance {rand_dist}, total_dist { global.current_distance} ");
}

if(time <= -30 && global.allow_movement) {
time = irandom_range(240,360);
oWhistle.pass = false;
}