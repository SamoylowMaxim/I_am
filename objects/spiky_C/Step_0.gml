if global.hpC <= 0 {
	instance_destroy(hpC)
	global.a -= 1;
	instance_destroy(self)
}
if (global.actC = 1 && global.actA = 0 && global.actB = 0 && !instance_exists(dmgdeal) && !audio_is_playing(s_laser)){
	instance_destroy(ans_enemy)
	instance_create_depth(-100, -100,-12,dmgdeal)
	instance_create_depth(x+85,y-26,-12,arrow)
	if spike = 0 {
	global.dealtdmg = -4;
	audio_play_sound(s_command_stack, 1, false)
	spike = global.hpC;
	}
	else {
	audio_play_sound(s_hit, 1, false)
	global.dealtdmg = round(irandom_range(7,9-global.art3)*global.hard)
	global.hp -= global.dealtdmg;
	global.hull -= global.dealtdmg;
	spike = 0;
	}
	instance_create_depth(0,0,-12,ans_enemy)
	global.actC = 0
}