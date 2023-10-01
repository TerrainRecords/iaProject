/// @description Insert description here
// You can write your code in this editor

if(global.active_members[local_selected_index] != 0)
{
	var member_struct = global.active_members[local_selected_index];
	name = member_struct.name;
	role = member_struct.role;
	mbti = member_struct.mbti;
	sprite_index = member_struct.img;
	personal_schedule = member_struct.personal_schedule;
	scr_add_to_schedule(personal_schedule);
}

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


