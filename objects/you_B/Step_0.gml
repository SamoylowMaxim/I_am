if global.hpB <= 0 {
	instance_destroy(hpB)
	global.a -= 1;
	instance_destroy(self)
}
if (global.actB = 1 && global.actA = 0 && !instance_exists(dmgdeal) && !audio_is_playing(s_laser)){
	instance_destroy(ans_enemy)
	instance_create_depth(-100, -100,-12,dmgdeal)
	instance_create_depth(x+85,y-26,-12,arrow)
	instance_create_depth(0,0,-12,ans_enemy)
	if global.hpB >= 40 || global.hard >= 1.5 {
	choice = irandom_range(1,2)
	if choice = 1 { //Creating and slowing down
	if !instance_exists(en_A) {
		global.dealtdmg = -1;
		instance_create_depth(640,192,-1,en_A)
		audio_play_sound(s_command_stack, 1, false)
		global.a += 1;
	}
	else {
		if !instance_exists(en_C) {
			global.dealtdmg = -1;
			instance_create_depth(1088,192,-1,en_C)
			audio_play_sound(s_command_stack, 1, false)
			global.a += 1;
		}
		else {
			audio_play_sound(s_hit, 1, false)
			instance_create_depth(hero_fight.x+85, hero_fight.y+96,-12,dmgdeal)
			global.reduceact = 1;
			global.dealtdmg = -7;
		}
	}
	}
	if choice = 2 {
		global.dealtdmg = round(irandom_range(10,15-global.art3)*global.hard)
		global.hp -= global.dealtdmg;
		global.hull -= global.dealtdmg;
	}
	}
	else {
		audio_play_sound(s_command_stack, 1, false)
		global.dealtdmg = -8;
		global.hpB += round(30*global.hard);
		global.hard += 0.2*global.hard;
	}
	global.actB = 0
}