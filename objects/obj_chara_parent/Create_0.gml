/// @description Insert description here
// You can write your code in this editor

// Initialize the random number generator to ensure different results each time.
randomize();

// Set the animation speed of the character's sprite to 0 to keep it static.
image_speed = 0;

// Randomly choose a gender with equal probability.
gender = choose("Male", "Female");

// Based on the chosen gender, select a sprite from a predefined list and assign a name.
if(gender == "Male"){
	sprite_index = choose(spr_char_10, spr_char_11, spr_char_12, spr_char_13, spr_char_14, spr_char_15, spr_char_16, spr_char_17, spr_char_18, spr_char_19);
	name = choose("Liam", "Noah", "Oliver", "James", "Elijah", "William", "Henry", "Lucas", "Benjamin", "Theodore", "Jack", "Frank", "Anthony", "Kevin", "Lewis");
}else{
	sprite_index = choose(spr_char_0, spr_char_1, spr_char_2, spr_char_3, spr_char_4, spr_char_5, spr_char_6, spr_char_7, spr_char_8, spr_char_9);
	name = choose("Olivia", "Emma", "Charlotte", "Amelia", "Sophia", "Isabella", "Ava", "Mia", "Evelyn", "Luna", "June", "May", "Lilian", "Sally");
}

// Randomly choose a last name from a list and append to the first name.
randomize();
lastname = choose("Smith", "Johnson", "Williams", "Lee", "Rodriguez", "Wilson", "Sanders", "Zhang", "Sato", "Wang", "An", "Li", "Huang", "Hamilton", "Robert");
name = name + " " + lastname;

// Randomly create an MBTI type by choosing one letter from each pair.
randomize();
mbti1 = choose("E", "I");
mbti2 = choose("S", "N");
mbti3 = choose("T", "F");
mbti4 = choose("J", "P");
mbti = mbti1 + mbti2 + mbti3 + mbti4; // A system is needed to track personality conflicts.

// Randomly assign a role to the character from a list of musical roles.
randomize();
role = choose("Keys", "Guit", "Bass", "Voc", "Perc");

// Initialize a weekly schedule with a 2D array to store availability.
randomize();  
personal_schedule = [[]];
for (var day_of_week = 0; day_of_week < 5; day_of_week++) {
    for (var block = 0; block < 3; block++) {
        var randomBoolean = (irandom(3) == 0); // Generate a random boolean to simulate availability.
        personal_schedule[day_of_week][block] = randomBoolean;
    }
}
show_debug_message(personal_schedule);

// Create a structured object to store the member's information.
member_struct = {
	name: name,
	role: role,
	img: sprite_index,
	mbti: mbti,
	personal_schedule: personal_schedule
};

// Define a function to handle button activation which adds the character to the global active members array.
activate_button = function() {
	// Add the member to the active list if there's room and the selected index is available.
	if((array_length(global.active_members) <= 4) && array_any(global.active_members, function(_val, _ind){return _val == 0})){
		room = rm_management; // Presumably changes the room to the management room.
		global.active_members[global.selected_member_index] = member_struct; // Add the member to the active members array.
		global.selected_member_index++; // Increment the index for the next member.
		show_debug_message(global.active_members);
		show_debug_message(global.selected_member_index);
	}
};
