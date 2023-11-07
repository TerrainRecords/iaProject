// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_performance_calculator(event_popularity){
    // Calculate the base coefficient for the team's performance.
    // This is done by adding role score and MBTI score then multiplying by the practice blocks divided by 2000.
    team_base_coefficient = (global.role_score + global.mbti_score)*(global.practice_blocks/2000);

    // Calculate the stress penalty. This is based on the number of consecutive performances.
    // Each consecutive performance reduces the fan gain by 40% of the base fan gain.
    stress_penalty = global.consecutive_performances*(0.4)

    // Calculate the initial fan gain before applying the stress penalty.
    // This is the team's base coefficient multiplied by the event's popularity, rounded to the nearest whole number.
    pre_penalty_fan_gain = round(team_base_coefficient * event_popularity);

    // Calculate the final fan gain after applying the stress penalty.
    // The penalty is a percentage reduction from the pre-penalty fan gain.
    final_fan_gain = pre_penalty_fan_gain - pre_penalty_fan_gain * stress_penalty;

    // Return the final fan gain value. This is the number of new fans earned from the event after accounting for stress.
    return final_fan_gain;
}