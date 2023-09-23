/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 



if ((chosen == false) && position_meeting(mouse_x, mouse_y, id) && mouse_check_button_pressed(mb_left))
{
	image_blend = c_lime;
	chosen = true;
}
else
{
	if ((chosen == true) && position_meeting(mouse_x, mouse_y, id) && mouse_check_button_pressed(mb_left))
	{
		image_blend = -1;
		chosen = false;
	}
}