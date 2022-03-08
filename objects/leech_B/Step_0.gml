if global.hpB <= 0 {
	instance_destroy(hpB)
	global.a -= 1;
	instance_destroy(self)
}
if (global.actB = 1 && global.actA = 0 && !instance_exists(dmgdeal) && !audio_is_playing(s_laser)){
	if steal = 0 && global.hpB <= round(35*global.hard) / 2 {
		global.dealtdmg = -6;
		instance_create_depth(-100,-100,-12,dmgdeal)
		audio_play_sound(s_command_stack,1,false)
		steal = 1;
	}
	else 
	if steal = 1 {
		global.dealtdmg = round(irandom_range(8,12-global.art3)*global.hard)
		instance_create_depth(hero_fight.x+85, hero_fight.y+96,-12,dmgdeal)
		audio_play_sound(s_hit, 1, false)
		global.hpB += global.dealtdmg;
		global.hull -= global.dealtdmg;
		global.hp -= global.dealtdmg;
		steal = 0;
	}
	else {
		global.dealtdmg = round(irandom_range(2,4-global.art3)*global.hard)
		instance_create_depth(hero_fight.x+85, hero_fight.y+96,-12,dmgdeal)
		audio_play_sound(s_hit, 1, false)
		global.hull -= global.dealtdmg;
		global.hp -= global.dealtdmg;
	}
	instance_destroy(ans_enemy)
	instance_create_depth(x+85,y-26,-12,arrow)
	instance_create_depth(0,0,-12,ans_enemy)
	global.actB = 0
}