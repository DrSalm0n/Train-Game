/// @desc Manage Game

if (keyboard_check_pressed(vk_f11) or keyboard_check_pressed(vk_f4))
	window_set_fullscreen(!window_get_fullscreen());