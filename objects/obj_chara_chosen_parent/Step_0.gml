/// @description Code for assigning selected characters to management page
// You can write your code in this editor

if(global.active_members[local_selected_index] != 0 && global.active_members[local_selected_index] != member_struct)
{
	member_struct = global.active_members[local_selected_index];
	name = member_struct.name;
	role = member_struct.role;
	mbti = member_struct.mbti;
	sprite_index = member_struct.img;
	personal_schedule = member_struct.personal_schedule;
	scr_add_to_schedule(personal_schedule);
	global.band_MBTI[local_selected_index, 0] = string_char_at(mbti, 1);
	global.band_MBTI[local_selected_index, 1] = string_char_at(mbti, 2);
	global.band_MBTI[local_selected_index, 2] = string_char_at(mbti, 3);
	global.band_MBTI[local_selected_index, 3] = string_char_at(mbti, 4);
	global.band_roles[local_selected_index] = role;
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