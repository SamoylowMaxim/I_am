if global.hp <= 0 || global.hull <= 0 {
	audio_pause_all();
	room_goto(r_game_over)
}
if global.acts = 0 {
	t += 1;
}
if (t > 10 && global.acts = 0 && global.actA = 0 && global.actB = 0 && global.actC = 0 && !instance_exists(dmgdeal)) {
	global.acts = 2
	if instance_exists(slow_prey_A) || instance_exists(you_B) {
	if global.reduceact = 1 {
		global.acts -= 1;
		global.reduceact = 0;
	}
	if global.encounter = 18 {
		global.hp = global.hull;
	}
	}
	instance_destroy(turnend)
	if global.cd2 != 0 {
		global.cd2 -= 1;
	}
	if global.cd3 != 0 {
		global.cd3 -= 1;
	}
	if global.cd1def != 0 {
		global.cd1def -= 1;
	}
	if global.cd2def != 0 {
		global.cd2def -= 1;
	}
	if global.cd3def != 0 {
		global.cd3def -= 1;
	}
	if global.cd3def = 2 {
		audio_play_sound(s_command_stack, 1, false)
		global.acts += 2;
	}
	instance_create_depth(15,560,-9,hit)
	instance_create_depth(32,676,-9,show_acts)
	t = 0;
}
if global.a = 0 {
	instance_create_depth(-10,-10,-100,black)
}
if global.a = -1 {
		if global.encounter = 6 || global.encounter = 12 {
			audio_stop_all();
			audio_play_sound(mus_ambient,1,true);
		}
		room_goto(r_reward)
	}