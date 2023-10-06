/// @description Insert description here
// You can write your code in this editor

role_score = 0;

if(array_contains(global.band_roles, "Keys")){
	role_score += 1
}
if(array_contains(global.band_roles, "Guit")){
	role_score += 1
}
if(array_contains(global.band_roles, "Bass")){
	role_score += 1
}
if(array_contains(global.band_roles, "Voc")){
	role_score += 1
}
if(array_contains(global.band_roles, "Perc")){
	role_score += 1
}