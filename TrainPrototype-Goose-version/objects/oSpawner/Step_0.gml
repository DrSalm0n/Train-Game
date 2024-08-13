if(time <= 0 && oWhistle.pass == false)
{
instance_create_depth(x, 235, depth, oAnimal);
time = timer;
}
if(time == 0)
time = irandom_range(300,450);

time--;