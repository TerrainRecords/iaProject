/// @description Insert description here
// You can write your code in this editor

draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_font(fnt_role);

draw_set_color(c_yellow);

draw_text(x, y, "Role Score: ");

draw_set_color(c_white);

draw_text(x + 70, y, global.role_score);