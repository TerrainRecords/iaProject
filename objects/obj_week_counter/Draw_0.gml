/// @description Insert description here
// You can write your code in this editor

draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_font(fnt_role);
draw_set_color(c_white);

draw_set_color(c_yellow);

draw_text(x, y, "Current Week: ");

draw_set_color(c_white);

draw_text(x + 60, y, global.week);


if(global.week > 52){
	room_goto(rm_gameOver);
}