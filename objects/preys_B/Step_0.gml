if global.hpB <= 0 {
	instance_destroy(hpB)
	if instance_exists(slow_prey_A) {
		global.hpA = round(20*global.hard);
	}
	else {
		instance_create_depth(640,192,-1,slow_prey_A)
	}
	instance_create_depth(864,192,-1,prey_B)
	instance_create_depth(1088,192,-1,prey_C)
	global.a -= 1;
	instance_destroy(self)
}
if (global.actB = 1 && !instance_exists(dmgdeal) && !audio_is_playing(s_laser)){
	instance_destroy(ans_enemy)
	
	instance_create_depth(x+85,y-26,-12,arrow)
	instance_create_depth(0,0,-12,ans_enemy)
	if instance_exists(slow_prey_A) {
	global.dealtdmg = round(irandom_range(7,12-global.art3)*global.hard)
	instance_create_depth(hero_fight.x+85, hero_fight.y+96,-12,dmgdeal)
	audio_play_sound(s_hit, 1, false)
	global.hp -= global.dealtdmg
	global.hull -= global.dealtdmg
	}
	else {
		instance_create_depth(-100, -100,-12,dmgdeal)
		audio_play_sound(s_command_stack, 1, false)
		global.dealtdmg = -1;
		instance_create_depth(640,192,-1,slow_prey_A)
	}
	global.actB = 0
}