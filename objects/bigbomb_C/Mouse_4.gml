if instance_exists(selected) && !instance_exists(art_box) {
	if instance_exists(desc_hit){ //Hit move
		if global.hpC <= round(12*global.dmgbuff*global.art1buff) && global.art1 = 1 {
			global.dealtdmg = round(12*global.dmgbuff*global.art1buff);
		}
		else {
		global.dealtdmg = round(irandom_range(8,12)*global.dmgbuff*global.art1buff);
		}
		if global.def = 0 {
		global.hpA -= round(global.dealtdmg/2);
		instance_create_depth(protector_A.x+protector_A.sprite_width/2,protector_A.y+protector_A.sprite_height/2,-12,dmgdeal)
		}
		else {
			global.hpC -= global.dealtdmg;
			instance_create_depth(x+sprite_width/2,y+sprite_height/2,-12,dmgdeal)
		}
		global.dmgbuff = 1;
		global.acts -= 1; 
		global.selfdmg = 0;
		audio_play_sound(s_hit,1,false)
		instance_create_depth(0,0,-12,ans_hit)
		instance_destroy(desc_hit)
	}
	if instance_exists(desc_measure_flare){ //Measure Flare move
		if global.hpC <= round(6*global.dmgbuff*global.art1buff) && global.art1 = 1 {
			global.dealtdmg = round(6*global.dmgbuff*global.art1buff)
		}
		else {
		global.dealtdmg = round(irandom_range(4,6)*global.dmgbuff*global.art1buff);
		}
		
		if global.def = 0 {
		global.hpA -= round(global.dealtdmg/2);
		instance_create_depth(protector_A.x+protector_A.sprite_width/2,protector_A.y+protector_A.sprite_height/2,-12,dmgdeal)
		instance_create_depth(protector_A.x-8,protector_A.y+protector_A.sprite_height+16,-10,hpA)
		}
		else {
			instance_create_depth(x+sprite_width/2,y+sprite_height/2,-12,dmgdeal)
			instance_create_depth(x-8,y+sprite_height+16,-10,hpC)
			global.hpC -= global.dealtdmg;
		}
		global.dmgbuff = 1;
		global.acts -= 1 - global.art6;
		global.cd2 = 2;
		measure_flare.image_alpha = 0.5;
		instance_create_depth(x+sprite_width/2,y+sprite_height/2,-12,dmgdeal)
		global.selfdmg = 0;
		audio_play_sound(s_hit,1,false)
		instance_create_depth(0,0,-12,ans_hit)
		instance_destroy(desc_measure_flare)
	}
	if instance_exists(desc_melting_heat){ //Melting Heat move
		global.dmgbuff = 1;
		instance_create_depth(x+sprite_width/2,y+sprite_height/2,-12,dmgdeal)
		instance_create_depth(0,0,-12,ans_hit)
		instance_destroy(desc_melting_heat)
		if global.oprecast = 0 {
		global.op2 = 0;
		melting_heat.image_alpha = 0.25;
		}
		else {
			global.oprecast -= 1
		}
		global.selfdmg = round((global.hpC/2*3) / (global.maxhull/100))
		global.hull -= round(global.hpC/2 * 3);
		global.hp -= round(global.hpC/2);
		global.hpC = round(global.hpC/2);
	}
	cursor_sprite = sp_cursor
	instance_destroy(selected)
}