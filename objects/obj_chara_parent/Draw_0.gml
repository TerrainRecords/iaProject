/// @description Insert description here
// You can write your code in this editor

draw_self();

draw_set_font(fnt_name);
//draw_set_halign(fa_right);
//draw_set_valign(fa_top);
draw_set_color(c_white);


draw_text(x+64, y+230, name);

draw_set_font(fnt_role);
draw_set_color(c_yellow);

draw_text(x+115, y+253, role);

draw_text(x+15, y+253, mbti);