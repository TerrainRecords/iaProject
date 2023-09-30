/// @description Init 
// 你可以在此编辑器中写入代码

name = "";
role = "";
mbti = "";
sprite_index = spr_char_empty;

show_debug_message(global.active_members[0]);



activate_button = function() 
{
	room = rm_management;
	global.active_members[global.selected_member_index] = member_struct;
	global.selected_member_index ++;
	show_debug_message(global.active_members);
	show_debug_message(global.selected_member_index);
}