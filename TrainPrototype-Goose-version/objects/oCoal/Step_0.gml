/// @description Insert description here
// You can write your code in this editor
if coal==0&&global.velocity==0
{draw_text(room_width/2, 250, "Game Over");
	
instance_create_layer(room_width / 2, room_height - 200, "HUD", oButton_play_again);

instance_create_layer(room_width / 2, room_height - 150, "HUD", oButton_go_to_menu);
	
}
if (coal < 0) {
    coal = 0;}
if (coal=0){
    global.acceleration=0}
else {global.acceleration=1.75} //important to change this if you change acceleration from controller