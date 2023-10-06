/// @description Insert description here
// You can write your code in this editor


if(array_contains(global.active_members, 0) == false){
	instance_deactivate_object(self); //Hides this button after having a full team
}


// Inherit the parent event
event_inherited();

