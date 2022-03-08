if global.hp < round(global.maxhp/10*3) && global.art4 = 1{
	global.art1buff = 1.3
	if global.hull < round(global.hull/10) && global.art4 = 1{
	global.art1buff = 1.8
	}
}
else {
if global.hull < round(global.hull/10) && global.art4 = 1{
	global.art1buff = 1.5
	if global.hp < round(global.maxhp/10) && global.art4 = 1{
	global.art1buff = 1.8
	}
}
else {
	global.art1buff = 1;
}
}