if (global.rounds > 3)//animals won't spawn until after 3 rounds so the player can get use to the game
{
	if((rand_dist <= global.current_distance && time <= 0 && oWhistle.pass == false && !global.at_warning_zone && global.velocity >= 7) || oWhistle.failcon == true)
	{
	    instance_create_depth(x, 235, depth, oAnimal);
		oWhistle.failcon = false;
	    // No need to re-randomize unless specific to game mechanics
		randomize();
	    time = irandom_range(240, 360);
	    rand_dist = irandom_range(global.current_distance + 1500, global.current_distance + 4000);
	}

	if(rand_dist <= global.current_distance + 1500) {
	    time--; // Decrement time
	    show_debug_message($"Time: {time}, Pass: {oWhistle.pass}, distance {rand_dist}, total_dist {global.current_distance}");
	}

	if(time <= -30 && !global.at_warning_zone) {
	    time = irandom_range(240, 360);
	    oWhistle.pass = false;
	}
}