if global.hpB <= 0 {
	instance_destroy(hpB)
	global.a -= 1;
	instance_destroy(self)
}
if (global.actB = 1 && global.actA = 0 && !instance_exists(dmgdeal) && !audio_is_playing(s_laser)){
	instance_destroy(ans_enemy)
	instance_create_depth(hero_fight.x+85, hero_fight.y+96,-12,dmgdeal)
	instance_create_depth(x+85,y-26,-12,arrow)
	instance_create_depth(0,0,-12,ans_enemy)
	global.dealtdmg = round(irandom_range(3,5-global.art3)*global.hard)
	global.hp -= global.dealtdmg
	global.hull -= global.dealtdmg
	global.actB = 0
}