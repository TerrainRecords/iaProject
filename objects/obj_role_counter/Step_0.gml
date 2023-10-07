/// @description Insert description here
// You can write your code in this editor

global.role_score = 0;

if(array_contains(global.band_roles, "Keys")){
	global.role_score += 25
}
if(array_contains(global.band_roles, "Guit")){
	global.role_score += 25
}
if(array_contains(global.band_roles, "Bass")){
	global.role_score += 25
}
if(array_contains(global.band_roles, "Voc")){
	global.role_score += 25
}
if(array_contains(global.band_roles, "Perc")){
	global.role_score += 25
}