if instance_exists(desc_deep_analysis) && global.acts > 0 &&  !instance_exists(check_desc){
global.selfdmg = 0;
instance_create_depth(928,320,-20,aoedeal)
instance_create_depth(0,0,-12,ans_hit)
instance_destroy(selected)
instance_destroy(desc_deep_analysis)
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
	instance_create_depth(you_B.x-8,you_B.y+you_B.sprite_height,-10,hpB)
}
if instance_exists(prey_B) {
	instance_create_depth(prey_B.x-8,prey_B.y+prey_B.sprite_height+16,-10,hpB)
}
if instance_exists(preys_B) {
	instance_create_depth(preys_B.x+16,preys_B.y+preys_B.sprite_height,-10,hpB)
}
if instance_exists(bs_1) {
	instance_create_depth(bs_1.x-8,bs_1.y+bs_1.sprite_height+16,-10,hpB)
}
if instance_exists(summoner_B) {
	instance_create_depth(summoner_B.x-8,summoner_B.y+summoner_B.sprite_height+16,-10,hpB)
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
global.acts -= 1;
global.cd2def = 4;
global.dmgbuff = 1.35;
image_alpha = 0.5;
}
if global.acts = 0 {
	
	instance_destroy(self)
}