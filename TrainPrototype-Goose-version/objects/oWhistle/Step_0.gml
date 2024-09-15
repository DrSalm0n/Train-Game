if(oSpawner.time >= 200)
letter = "----";
if(oSpawner.time <= 191 && oSpawner.time >= 181) {
	letter = "????";
	pass = false;
	winlose = false;
}
if(oSpawner.time <= 180 and oSpawner.time >= 175)
{
	letter = "";
	for(z = 0; z <4; z++)
	{
	letter += choose( "W", "A", "S", "D");
	}
}

//Destroys animal before crashing
if(letter != "FAIL" && letter != "????")
{
if(keyboard_check_pressed(ord("A")))
{
	if(string_char_at(letter,1) == "A")
	letter = string_delete(letter,1,1);
		else 
		{
	letter = "FAIL";
	winlose = false;
	failcon = true;
		}
}
if(keyboard_check_pressed(ord("W")))
{
		if(string_char_at(letter,1) == "W")
	letter = string_delete(letter,1,1);
		else 
		{
	letter = "FAIL";
	winlose = false;
	failcon = true;
		}
}
if(keyboard_check_pressed(ord("S")))
{
		if(string_char_at(letter,1) == "S")
	letter = string_delete(letter,1,1);
		else 
		{
	letter = "FAIL";
	winlose = false;
	failcon = true;
		}
}
if(keyboard_check_pressed(ord("D")))
{
		if(string_char_at(letter,1) == "D")
	letter = string_delete(letter,1,1);
		else 
		{
	letter = "FAIL";
	winlose = false;
	failcon = true;
		}
}	
if(letter == "")
{
		winlose = true;
		letter = "Nice";
		global.spawnToken = true;//---------------------------------
}
}
if(winlose and oSpawner.time <= 20)
{
	pass = true;
	
}
/*else if (!winlose and oSpawner.time <= 20) <--------- this wasn't in the version Kaleb did in the test class
letter = "----";

if(pass&&global.velocity!=0){
global.score+=0.01
}*/ 
