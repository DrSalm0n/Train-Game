draw_set_color(c_black);

draw_set_font(FNT_pixelbug_smaller);
draw_text(x, y, "Press the space bar if you want to accelerate the train, the more you press it, \nthe more the train will accelerate.");
draw_text(x, y+50, "The train will decelerate on its own if you stop accelerating.");
draw_text(x, y+80, "Your goal is to stop the train at the station, the closer the train is to the center, \nthe more points you will get.");
draw_text(x, y+130, "When the alarm sign appears on the right, it means the station is close. \nOnce the stop signs start appearing you will not be able to accelerate.");
draw_text(x, y+180, "Everytime you accelerate your coal will decrease, if you run out of coal you lose. \nIf you stop at the station succesfully you will get more coal.");
draw_text(x, y+230, "CAREFULL WITH THE OBSTACLES ON YOUR WAY, press the keys in the order\n they appear in the middle of the screen to use the whistle and scare them away.");
draw_set_color(c_white);
