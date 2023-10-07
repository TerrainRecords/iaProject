// Inherit the parent event
event_inherited();

if(array_contains(global.active_members, 0) == false){
	instance_deactivate_object(self);
}