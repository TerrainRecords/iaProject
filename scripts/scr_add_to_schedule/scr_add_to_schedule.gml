// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_add_to_schedule(personal_schedule){
    // Loop through each day of the week, assuming a 5-day week.
    for (var day_of_week = 0; day_of_week < 5; day_of_week++) {
        // For each day, loop through 3 time blocks.
        for (var block = 0; block < 3; block++) {
            // Add the availability from the personal schedule to the global schedule matrix.
            // It increases the count of available blocks for each specific day and time block. The block is available if availble = 0
            global.available_blocks_matrix[day_of_week, block] += personal_schedule[day_of_week][block];
        }
    }
}