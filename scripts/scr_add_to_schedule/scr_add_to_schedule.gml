// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_add_to_schedule(personal_schedule){
	for (var day_of_week = 0; day_of_week < 5; day_of_week++) {
		for (var block = 0; block < 3; block++) {
			global.available_blocks_matrix[day_of_week, block] += personal_schedule[day_of_week, block];
		}
	}
}