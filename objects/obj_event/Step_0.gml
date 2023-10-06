/// @description Insert description here
// You can write your code in this editor


if(timestamp < global.week){
	timestamp = global.week
	//move existing events up by 1
	y -= 32;
}



//On Click
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
		chosen = false
	}
}
