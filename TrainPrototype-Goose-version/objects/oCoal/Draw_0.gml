/// @description Insert description here
// You can write your code in this editor
draw_text(25,100,string(coal)) 

if (coal == 0 && global.velocity == 0) {
    // Define text strings
    var game_over_text = "Game Over";
    var score_text = "Score: " + string(global.score);
    
    // Calculate text width and height
    var game_over_width = string_width(game_over_text);
    var game_over_height = string_height(game_over_text);
    var score_width = string_width(score_text);
    var score_height = string_height(score_text);
    
    // Calculate centered positions
    var x_axis = room_width / 2;
    var y_axis = room_height -250;
    
    // Draw text centered on screen
    draw_text(x_axis - game_over_width / 2, y_axis - game_over_height / 2 - 25, game_over_text);
    draw_text(x_axis - score_width / 2, y_axis - score_height / 2 + 10, score_text);
}