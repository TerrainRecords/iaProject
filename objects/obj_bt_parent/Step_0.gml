/// @description click 

hovering = position_meeting(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), id);

// Check if the mouse is hovering over the element and if the left mouse button is released.
// If both conditions are true, set the 'clicked' flag to true.
if (hovering && mouse_check_button_released(mb_left)){
	clicked = true;
} 

// Check if the left mouse button is released.
if (mouse_check_button_released(mb_left)){
	clicked = false; // Reset the 'clicked' flag to false by default.

	// If the mouse is hovering over the element when the button is released, play a sound effect
	// and trigger the button's activation function.
	if (hovering) {
		audio_play_sound(snd_button, 1, false); // Play the button click sound.
		activate_button(); // Call the function that handles the button activation.
	}
} 

// Change the image index based on the mouse interaction to display the appropriate button state.
// If 'clicked' is true, it indicates the button is in the clicked state.
if (clicked) {
	image_index = 2; // Set the image index to show the clicked button state.
} 
// If the mouse is just hovering over the button, show the hover state.
else if (hovering) {
	image_index = 1; // Set the image index to show the button hover state.
} 
// If the mouse is not interacting with the button, show the default state.
else {
	image_index = 0; // Set the image index to show the button's default state.
} 