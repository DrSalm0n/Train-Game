/// @description Insert description here
// You can write your code in this editor
// Draw Event
// Draw the elapsed time as a string
var minutes = floor(displayTime / 60);
var seconds = displayTime mod 60;

draw_self(); // If you have other sprites to draw, this will draw them

draw_text(x, y, string(minutes) + ":" + string(seconds));