draw_set_color(c_yellow)

for(var i = 0; i < array_length(global.band_fans)-1; i ++){
	draw_line(x+(100*i), y-(global.band_fans[i])/4, x+(100*(i+1)), y-global.band_fans[i+1]/4);//plots a line for the line graph
}