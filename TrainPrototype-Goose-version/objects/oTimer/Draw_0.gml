/// @description Insert description here
// You can write your code in this editor
// Draw Event
// Draw the elapsed time as a string
var minutes = floor(displayTime / 60);
var seconds = displayTime mod 60;

draw_self(); // If you have other sprites to draw, this will draw them
draw_set_color(c_black);
draw_set_halign(fa_left);
draw_set_valign(fa_top);

draw_text(x, y, string(minutes) + ":" + string(seconds));
draw_set_color(c_white);