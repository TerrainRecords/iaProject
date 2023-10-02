/// @description Insert description here
// You can write your code in this editor


mbti_sum1 = 0
mbti_sum2 = 0
mbti_sum3 = 0
mbti_sum4 = 0

for(var i = 0; i < 4; i++){
	if(global.band_MBTI[i, 0] == "E"){
		mbti_sum1 += 1;
	}
	if(global.band_MBTI[i, 0] == "I"){
		mbti_sum1 -= 1;
	}
	if(global.band_MBTI[i, 1] == "S"){
		mbti_sum2 += 1;
	}
	if(global.band_MBTI[i, 1] == "N"){
		mbti_sum2 -= 1;
	}
	if(global.band_MBTI[i, 2] == "T"){
		mbti_sum3 += 1;
	}
	if(global.band_MBTI[i, 2] == "F"){
		mbti_sum3 -= 1;
	}
	if(global.band_MBTI[i, 3] == "J"){
		mbti_sum4 += 1;
	}
	if(global.band_MBTI[i, 3] == "P"){
		mbti_sum4 -= 1;
	}
}

mbti_sum = abs(mbti_sum1) + abs(mbti_sum2) + abs(mbti_sum3) + abs(mbti_sum4);

mbti_score = (mbti_sum*100)/16
