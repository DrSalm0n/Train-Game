if(time <= 0 && global.at_stop = false && oWhistle.pass == false)
{
instance_create_depth(x, 235, depth, oAnimal);
time = timer;
}
if(time == 0)
time = irandom_range(300,550);

time--;