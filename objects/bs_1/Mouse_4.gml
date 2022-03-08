if instance_exists(selected) && !instance_exists(art_box){
	if instance_exists(desc_hit){ //Hit move
		if global.hpB <= round(12*global.dmgbuff*global.art1buff) && global.art1 = 1 {
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
			global.hpB -= global.dealtdmg;
			instance_create_depth(x+sprite_width/2,y+sprite_height/2,-12,dmgdeal)
		}
		global.dmgbuff = 1;
		global.acts -= 1;
		audio_play_sound(s_hit,1,false)
		global.selfdmg = 0;
		instance_create_depth(0,0,-12,ans_hit)
		instance_destroy(desc_hit)
	}
	if instance_exists(desc_measure_flare) { //Measure Flare move
		if global.hpB <= round(6*global.dmgbuff*global.art1buff) && global.art1 = 1 {
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
			global.hpB -= global.dealtdmg;
			instance_create_depth(x+sprite_width/2,y+sprite_height/2,-12,dmgdeal)
			instance_create_depth(x-8,y+sprite_height+16,-10,hpB)
		}
		global.dmgbuff = 1;
		global.acts -= 1 - global.art6;  
		global.cd2 = 2;
		audio_play_sound(s_hit,1,false)
		measure_flare.image_alpha = 0.5;
		global.selfdmg = 0;
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
		melting_heat.image_alpha = 0.25;
		global.selfdmg = round((global.hpB/2*3) / (global.maxhull/100))
		global.hull -= round(global.hpB/2 * 3);
		global.hp -= round(global.hpB/2);
		global.hpB = round(global.hpB/2);
	}
	cursor_sprite = sp_cursor
	instance_destroy(input_line)
}
