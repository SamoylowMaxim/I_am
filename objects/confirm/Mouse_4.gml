if room = r_level_1 {
	room_goto(r_artifacts_check)
}
if room = r_reward {
	if y = 300 {
		if global.losthull - global.hull >= 75 {
			global.hull += 25
			if global.op1 = 0 || global.op2 = 0 || global.op3 = 0 {
				global.hull += 50
			}
		}
		global.hull += (global.losthull - global.hull)/irandom_range(3,5);
		if global.hull + (10-global.mode*2) >= global.maxhull {
			global.hull = global.maxhull;
		}
		else {
			global.hull += (10-global.mode*2);
		}
	}
	if y = 400 {
		global.maxhp += 10;
	}
	global.hull = round(global.hull)
	instance_destroy(confirm)
}
if room = r_artifacts_check {
	if instance_exists(art_box) {
		instance_destroy(art_desc)
		instance_destroy(art_box)
	}
	else {
	global.artlock = 2;
	global.encounter -= 1;
	room_goto(r_level_1)
	}
}
if room = r_battle {
	instance_destroy(check_desc)
	instance_destroy(art_box)
	instance_destroy(self)
}