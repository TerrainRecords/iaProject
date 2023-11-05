// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_performance_calculator(event_popularity){
	team_base_coefficient = (global.role_score + global.mbti_score)*(global.practice_blocks/2000);
	stress_penalty = global.consecutive_performances*(0.4)
	pre_penalty_fan_gain = round(team_base_coefficient * event_popularity);
	final_fan_gain = pre_penalty_fan_gain - pre_penalty_fan_gain * stress_penalty;
	return final_fan_gain;
}