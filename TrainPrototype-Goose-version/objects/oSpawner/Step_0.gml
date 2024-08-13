if(time <= 0 && global.at_stop = false && spawn <= 0 && oWhistle.pass == false)
{
instance_create_depth(x, 235,1, oAnimal);
time = timer / oAnimal.difficulty;
spawn++;
}


time--;