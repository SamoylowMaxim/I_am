instance_create_depth(760,300,-1,confirm)
instance_create_depth(920,400,-1,confirm)
cursor_sprite = sp_cursor
if global.encounter = 18 {
	room_goto(r_end)
}
if global.encounter = 6 || global.encounter = 12 {
	if global.mode = 0 {
	global.hard += 0.05;
	}
	else{
		global.hard += 0.15;
	}
}
if global.mode = 0 {
global.hull += (global.losthull - global.hull) / irandom_range(10,20);
}
global.hull = round(global.hull)