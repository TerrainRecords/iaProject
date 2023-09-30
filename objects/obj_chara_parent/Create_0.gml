/// @description Insert description here
// You can write your code in this editor

randomize();


image_speed = 0


// Choose a gender (equal chance it could be any one of these options)
gender = choose("Male", "Female");


// Choose sprite (inclusive of both ends)
if(gender == "Male"){
	sprite_index = choose(spr_char_10, spr_char_11, spr_char_12, spr_char_13, spr_char_14, spr_char_15, spr_char_16, spr_char_17, spr_char_18, spr_char_19);
	name = choose("Liam", "Noah", "Oliver", "James", "Elijah", "William", "Henry", "Lucas", "Benjamin", "Theodore", "Jack")
}else{
	sprite_index = choose(spr_char_0, spr_char_1, spr_char_2, spr_char_3, spr_char_4, spr_char_5, spr_char_6, spr_char_7, spr_char_8, spr_char_9);
	name = choose("Olivia", "Emma", "Charlotte", "Amelia", "Sophia", "Isabella", "Ava", "Mia", "Evelyn", "Luna", "June", "May")
}

randomize();
lastname = choose("Smith", "Johnson", "Williams", "Lee", "Rodriguez", "Wilson", "Sanders", "Zhang", "Sato", "Wang", "An")

name = name + " " + lastname

randomize();
mbti1 = choose("E", "I")
mbti2 = choose("S", "N")
mbti3 = choose("T", "F")
mbti4 = choose("J", "P")
mbti = mbti1+mbti2+mbti3+mbti4

randomize();
role = choose("Keys", "Guit", "Bass", "Voc", "Perc")

original_x = x
original_y = y

member_struct = 
{
	name : name,
	role : role,
	img : sprite_index,
	mbti : mbti
};

activate_button = function() 
{
	room = rm_management;
	global.active_members[global.selected_member_index] = member_struct;
	global.selected_member_index ++;
	show_debug_message(global.active_members);
	show_debug_message(global.selected_member_index);
}