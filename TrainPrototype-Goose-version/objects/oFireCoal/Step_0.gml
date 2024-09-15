if (!global.at_warning_zone) {

if (keyboard_check_pressed(vk_space) && coal != 0) {
    // Show sprite
    sprite_index = SPR_fire_1; // Replace with your sprite
    visible = true;

    // Start a timer to hide the sprite after a short delay
    alarm[0] = 5; // Adjust the value for the delay (30 steps = 1 second)
}

}
