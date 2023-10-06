/// @description Insert description here
// You can write your code in this editor


if(timestamp < global.week){
	timestamp = global.week
	//generate event for this week
	if(irandom(5) = 0){
		instance_create_layer(x, y, "Instances_1", obj_event);
	}
	//move existing events up by 1

}