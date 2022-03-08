if global.hpA <= 0 {
	global.def = -1;
	instance_destroy(hpA)
	global.a -= 1;
	instance_destroy(self)
}

if (global.actA = 1 && !instance_exists(dmgdeal) && !audio_is_playing(s_laser)){
	instance_create_depth(x+85,y-26,-12,arrow)
	global.def -= 1;
	if global.def = 0 && (instance_exists(bs_1) || instance_exists(bigbomb_C)){
		audio_play_sound(s_command_stack,1,false)
		global.dealtdmg = -5;
		instance_create_depth(-100,-100,-12,dmgdeal)
		global.actA = 0
	}
	else {
		if global.def = -1 {
			global.def = 2;
		}
		audio_play_sound(s_hit,1,false)
		instance_create_depth(-100,-100,-12,dmgdeal)
		global.dealtdmg = round(irandom_range(4,6-global.art3)*global.hard)
		global.hp -= global.dealtdmg
		global.hull -= global.dealtdmg
	}
	instance_destroy(ans_enemy)
	instance_create_depth(-100, -100,-12,dmgdeal)
	instance_create_depth(0,0,-12,ans_enemy)
	global.actA = 0
}