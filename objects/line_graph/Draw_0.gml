draw_set_color(c_yellow)

for(var i = 0; i < array_length(global.band_fans)-1; i ++){
	draw_line(x+(32*i), y-(global.band_fans[i])/7, x+(32*(i+1)), y-global.band_fans[i+1]/7);
}