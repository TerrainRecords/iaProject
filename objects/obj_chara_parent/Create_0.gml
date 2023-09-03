/// @description Insert description here
// You can write your code in this editor

randomize();


image_speed = 0


// Choose a gender (equal chance it could be any one of these options)
gender = choose("Male", "Female");

randomize();

// Choose sprite (inclusive of both)
if(gender == "Male"){
	sprite_index = choose(spr_char_10, spr_char_11, spr_char_12, spr_char_13, spr_char_14, spr_char_15, spr_char_16, spr_char_17, spr_char_18, spr_char_19);
	randomize();
	name = choose("Liam", "Noah", "Oliver", "James", "Elijah", "William", "Henry", "Lucas", "Benjamin", "Theodore")
}else{
	sprite_index = choose(spr_char_0, spr_char_1, spr_char_2, spr_char_3, spr_char_4, spr_char_5, spr_char_6, spr_char_7, spr_char_8, spr_char_9);
	randomize();
	name = choose("Olivia", "Emma", "Charlotte", "Amelia", "Sophia", "Isabella", "Ava", "Mia", "Evelyn", "Luna")
}


