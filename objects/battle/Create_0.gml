instance_create_depth(15,560,-9,hit)
instance_create_depth(32,676,-9,show_acts)
global.dealtdmg = 0;
global.actA = 0;
global.actB = 0;
global.actC = 0;
global.hpA = 0;
global.hpB = 0;
global.hpC = 0;
global.selfdmg = 0;
global.losthull = global.hull;
global.a = 0;
enc = 0;
done = 0;
if global.encounter = 6 {
	audio_stop_all();
	audio_play_sound(mus_boss,1,true)
	instance_create_depth(864,100,-1,preys_B)
	global.a = 1;
}
if global.encounter = 12 {
	audio_stop_all();
	audio_play_sound(mus_boss,1,true)
	instance_create_depth(640,192,-1,protector_A)
	instance_create_depth(864,192,-1,bs_1)
	instance_create_depth(1088,192,-1,bigbomb_C)
	global.a = 3;
}
if global.encounter = 18 {
	global.hull += (global.maxhp - 100 - global.temphp) * 2;
	round(global.hull);
	global.hp = global.hull;
	global.op1 = 0;
	audio_stop_all();
	audio_play_sound(mus_final, 1, true)
	instance_create_depth(864,192,-1,you_B)
	global.a = 1;
}

else
if global.encounter != 6 && global.encounter != 12 && global.encounter != 18 {
	do {
	enc = irandom_range(1,12)
	if enc = 1 && global.enc1 < 3{ //Bers + Heal
		global.enc1 += 1;
		instance_create_depth(640,192,-1,berserker_A)
		instance_create_depth(864,192,-1,healer_B)
		instance_create_depth(1088,192,-1,drone_C)
		global.a = 3;
		done = 1;
	}
	if enc = 2 && global.enc2 < 3{ //Bomb + Suppress
		global.enc2 += 1;
		instance_create_depth(640,232,-1,bomber_A)
		instance_create_depth(864,192,-1,en_B)
		instance_create_depth(1088,192,-1,suppressor_C)
		global.a = 3;
		done = 1;
	}
	if enc = 3 && global.enc3 = 0{ //Regular
		global.enc3 += 1;
		instance_create_depth(640,192,-1,en_A)
		instance_create_depth(864,192,-1,en_B)
		instance_create_depth(1088,192,-1,en_C)
		global.a = 3;
		done = 1;
	}
	if enc = 4  && global.enc4 <3{ //Leech
		global.enc4 += 1;
		instance_create_depth(640,192,-1,drone_A)
		instance_create_depth(800,246,-1,leech_B)
		instance_create_depth(1088,192,-1,en_C)
		global.a = 3;
		done = 1;
	}
	if enc = 5 && global.enc5 < 3{ //Spiky
		global.enc5 += 1;
		instance_create_depth(640,192,-1,drone_A)
		instance_create_depth(864,192,-1,en_B)
		instance_create_depth(1088,332,-1,spiky_C)
		global.a = 3;
		done = 1;
	}
	if enc = 6 && global.enc6 = 0{ //Summoner
		global.enc6 += 1;
		instance_create_depth(864,192,-1,summoner_B)
		global.a = 1;
		done = 1;
	}
	if enc = 7 && global.enc7 < 3{ //Leech + Bers
		global.enc7 += 1;
		instance_create_depth(640,192,-1,berserker_A)
		instance_create_depth(800,246,-1,leech_B)
		instance_create_depth(1088,192,-1,drone_C)
		global.a = 3;
		done = 1;
	}
	if enc = 8 && global.enc8 < 3{ //Bomb + Spiky
		global.enc8 += 1;
		instance_create_depth(640,232,-1,bomber_A)
		instance_create_depth(1088,332,-1,spiky_C)
		global.a = 2;
		done = 1;
	}
	if enc = 9 && global.enc9 < 3{ //Heal + Suppress
		global.enc9 += 1;
		instance_create_depth(864,192,-1,healer_B)
		instance_create_depth(1088,192,-1,suppressor_C)
		global.a = 2;
		done = 1;
	}
	if enc = 10 && global.enc10 = 0 { //Summoner again
		global.enc10 += 1;
		instance_create_depth(864,192,-1,summoner_B)
		global.a = 1;
		done = 1;
	}
	if enc = 11 && global.enc11 < 3 { //Leech + Suppressor
		global.enc11 += 1;
		instance_create_depth(640,192,-1,drone_A)
		instance_create_depth(800,246,-1,leech_B)
		instance_create_depth(1088,192,-1,suppressor_C)
		global.a = 3;
		done = 1;
	}
	if enc = 12 && global.enc12 = 0 { //Regular again
		global.enc12 += 1;
		instance_create_depth(640,192,-1,en_A)
		instance_create_depth(864,192,-1,en_B)
		instance_create_depth(1088,192,-1,en_C)
		global.a = 3;
		done = 1;
	}
	}
	until (done = 1)
}

//-------------------------------------------------------------------
if global.art5 = 1 {
if instance_exists(en_A) {
	instance_create_depth(en_A.x-8,en_A.y+en_A.sprite_height+16,-10,hpA)
}
if instance_exists(slow_prey_A) {
	instance_create_depth(slow_prey_A.x-8,slow_prey_A.y+slow_prey_A.sprite_height+16,-10,hpA)
}
if instance_exists(drone_A) {
	instance_create_depth(drone_A.x-8,drone_A.y+drone_A.sprite_height+16,-10,hpA)
}
if instance_exists(bomber_A) {
	instance_create_depth(bomber_A.x-8,bomber_A.y+bomber_A.sprite_height+16,-10,hpA)
}
if instance_exists(berserker_A) {
	instance_create_depth(berserker_A.x-8,berserker_A.y+berserker_A.sprite_height+16,-10,hpA)
}
if instance_exists(protector_A) {
	instance_create_depth(protector_A.x-8,protector_A.y+protector_A.sprite_height+16,-10,hpA)
}
if instance_exists(en_B) {
	instance_create_depth(en_B.x-8,en_B.y+en_B.sprite_height+16,-10,hpB)
}
if instance_exists(you_B) {
	instance_create_depth(you_B.x-8,you_B.y+you_B.sprite_height+16,-10,hpB)
}
if instance_exists(prey_B) {
	instance_create_depth(prey_B.x-8,prey_B.y+prey_B.sprite_height+16,-10,hpB)
}
if instance_exists(preys_B) {
	instance_create_depth(preys_B.x+48,preys_B.y+preys_B.sprite_height+16,-10,hpB)
}
if instance_exists(bs_1) {
	instance_create_depth(bs_1.x-8,bs_1.y+bs_1.sprite_height+16,-10,hpB)
}
if instance_exists(summoner_B) {
	instance_create_depth(summoner_B.x+32,summoner_B.y+summoner_B.sprite_height+16,-10,hpB)
}
if instance_exists(healer_B) {
	instance_create_depth(healer_B.x-8,healer_B.y+healer_B.sprite_height+16,-10,hpB)
}
if instance_exists(leech_B) {
	instance_create_depth(leech_B.x-8,leech_B.y+leech_B.sprite_height+16,-10,hpB)
}
if instance_exists(en_C) {
	instance_create_depth(en_C.x-8,en_C.y+en_C.sprite_height+16,-10,hpC)
}
if instance_exists(prey_C) {
	instance_create_depth(prey_C.x-8,prey_C.y+prey_C.sprite_height+16,-10,hpC)
}
if instance_exists(suppressor_C) {
	instance_create_depth(suppressor_C.x-8,suppressor_C.y+suppressor_C.sprite_height+16,-10,hpC)
}
if instance_exists(spiky_C) {
	instance_create_depth(spiky_C.x-8,spiky_C.y+spiky_C.sprite_height+16,-10,hpC)
}
if instance_exists(drone_C) {
	instance_create_depth(drone_C.x-8,drone_C.y+drone_C.sprite_height+16,-10,hpC)
}
if instance_exists(bigbomb_C) {
	instance_create_depth(bigbomb_C.x-8,bigbomb_C.y+bigbomb_C.sprite_height+16,-10,hpC)
}
}

t = 0