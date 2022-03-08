if global.hpB <= 0 {
	instance_destroy(hpB)
	global.a -= 1;
	instance_destroy(self)
}
if (global.actB = 1 && global.actA = 0 && !instance_exists(dmgdeal) && !audio_is_playing(s_laser)){
	global.dealtdmg = -1;
	if instance_exists(drone_A) {
		if instance_exists(drone_C) {
			global.dealtdmg = round(irandom_range(8,10-global.art3)*global.hard)
			global.hp -= global.dealtdmg
			global.hull -= global.dealtdmg
			instance_create_depth(hero_fight.x+85, hero_fight.y+96,-12,dmgdeal)
		}
		else {
			instance_create_depth(1100,250,-1,drone_C)
			instance_create_depth(-100,-100,-12,dmgdeal)
		}
	}
	else {
		if instance_exists(drone_C) {
			instance_create_depth(650,250,-1,drone_A)
			instance_create_depth(-100,-100,-12,dmgdeal)
		}
		else {
		instance_create_depth(650,250,-1,drone_A)
		instance_create_depth(1100,250,-1,drone_C)
		instance_create_depth(-100, -100,-12,dmgdeal)
		}
	}
	instance_destroy(ans_enemy)
	instance_create_depth(x+120,y-26,-12,arrow)
	instance_create_depth(0,0,-12,ans_enemy)
	global.actB = 0
}