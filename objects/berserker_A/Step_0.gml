if global.hpA <= 0 {
	instance_destroy(hpA)
	global.a -= 1;
	instance_destroy(self)
}

if (global.actA = 1 && !instance_exists(dmgdeal) && !audio_is_playing(s_laser)){
	instance_destroy(ans_enemy)
	instance_create_depth(hero_fight.x+85, hero_fight.y+96,-12,dmgdeal)
	instance_create_depth(x+85,y-26,-12,arrow)
	instance_create_depth(0,0,-12,ans_enemy)
	global.dealtdmg = irandom_range(1,2-global.art3)
	if global.hpA < round(20*global.hard) {
		global.dealtdmg += round((20 - global.hpA)/2*global.hard)
	}
	global.hp -= global.dealtdmg
	global.hull -= global.dealtdmg
	global.actA = 0
}