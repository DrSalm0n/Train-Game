if(oSpawner.time <= 181 && oSpawner.time >= 150)
	letter = "????";
	pass = false;

randomize();
if(oSpawner.time == 120)
{
	letter = "";
	for(z = 0; z <4; z++)
	{
	letter += choose( "W", "A", "S", "D");
	}
}

//Destroys animal before crashing
if(letter != "FAIL" && letter != "???")
{
if(keyboard_check_pressed(ord("A")))
{
	if(string_char_at(letter,1) == "A")
	letter = string_delete(letter,1,1);
		else 
	letter = "FAIL";
}
if(keyboard_check_pressed(ord("W")))
{
		if(string_char_at(letter,1) == "W")
	letter = string_delete(letter,1,1);
		else 
	letter = "FAIL";
}
if(keyboard_check_pressed(ord("S")))
{
		if(string_char_at(letter,1) == "S")
	letter = string_delete(letter,1,1);
		else 
	letter = "FAIL";
}
if(keyboard_check_pressed(ord("D")))
{
		if(string_char_at(letter,1) == "D")
	letter = string_delete(letter,1,1);
		else 
	letter = "FAIL";
}
if(letter == "")
{
	pass = true;
}
}
