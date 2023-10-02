/// @description Init 
// 你可以在此编辑器中写入代码

name = "";
role = "";
mbti = "";
sprite_index = spr_char_empty;
member_struct = {}
personal_schedule = [[]];

activate_button = function() 
{
	room = rm_management;
	global.active_members[global.selected_member_index] = 0;
	//HELP HOW DO I REMOVE A PERSON FROM SELECTION AHHHHHHHHHH
}

