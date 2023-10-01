/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 



if ((chosen == false) && position_meeting(mouse_x, mouse_y, id) && mouse_check_button_pressed(mb_left))
{
	image_blend = c_lime;
	chosen = true;
	global.selected_blocks_matrix[row,column] = 1
}
else
{
	if ((chosen == true) && position_meeting(mouse_x, mouse_y, id) && mouse_check_button_pressed(mb_left))
	{
		image_blend = -1;
		chosen = false;
		global.selected_blocks_matrix[row,column] = 0
	}
}