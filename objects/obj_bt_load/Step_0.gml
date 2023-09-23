/// @description click 
// 你可以在此编辑器中写入代码 

hovering = position_meeting(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), id);

if (hovering && mouse_check_button_pressed(mb_left)){
	clicked = true;
} 

if (mouse_check_button_released(mb_left)){
	clicked = false;
	if (hovering) {
		audio_play_sound(snd_button, 1, false);
		activate_button();
	}
} 

if (clicked) {
	image_index = 2;
} 
else if (hovering) {
	image_index = 1;
} 
else {
	image_index = 0;
} 

