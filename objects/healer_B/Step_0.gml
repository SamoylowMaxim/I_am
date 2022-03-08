if global.hpB <= 0 {
	instance_destroy(hpB)
	global.a -= 1;
	instance_destroy(self)
}
if (global.actB = 1 && global.actA = 0 && !instance_exists(dmgdeal) && !audio_is_playing(s_laser)){
	if global.hpA > 0 {
		global.dealtdmg = -2
		global.hpA += round(7*global.hard);
		global.hpB -= round(3/global.hard); //DIVIDED COS NEED LESS TAKEN DMG
		audio_play_sound(s_command_stack,1,false)
	}
	if global.hpC > 0 {
		global.dealtdmg = -2
		global.hpC += round(7*global.hard);
		global.hpB -= round(3/global.hard); //DIVIDED COS NEED LESS TAKEN DMG
		audio_play_sound(s_command_stack,2,false)
	}
	if global.hpA <= 0 && global.hpC <= 0 {
		audio_play_sound(s_hit,1,false)
		instance_create_depth(hero_fight.x+85, hero_fight.y+96,-12,dmgdeal)
		global.dealtdmg = round(irandom_range(4,6-global.art3)*global.hard)
		global.hp -= global.dealtdmg
		global.hull -= global.dealtdmg
	}
	instance_create_depth(-100, -100,-12,dmgdeal)
	instance_destroy(ans_enemy)
	instance_create_depth(x+85,y-26,-12,arrow)
	instance_create_depth(0,0,-12,ans_enemy)
	global.actB = 0
}