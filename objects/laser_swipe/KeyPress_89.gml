if instance_exists(desc_laser_swipe) && global.acts > 0 && !instance_exists(check_desc) {
global.selfdmg = 0;
instance_create_depth(900,320,-20,aoedeal)
if instance_exists(en_A) {
	global.hpA -= round(irandom_range(6,12)*global.dmgbuff*global.art1buff)
}
if instance_exists(slow_prey_A) {
	global.hpA -= round(irandom_range(6,12)*global.dmgbuff*global.art1buff)
}
if instance_exists(drone_A) {
	global.hpA -= round(irandom_range(6,12)*global.dmgbuff*global.art1buff)
}
if instance_exists(bomber_A) {
	global.hpA -= round(irandom_range(6,12)*global.dmgbuff*global.art1buff)
}
if instance_exists(berserker_A) {
	global.hpA -= round(irandom_range(6,12)*global.dmgbuff*global.art1buff)
}
if instance_exists(protector_A) {
	global.hpA -= round(irandom_range(6,12)*global.dmgbuff*global.art1buff)
}
if instance_exists(en_B) {
	global.hpB -= round(irandom_range(6,12)*global.dmgbuff*global.art1buff)
}
if instance_exists(you_B) {
	global.hpB -= round(irandom_range(6,12)*global.dmgbuff*global.art1buff)
}
if instance_exists(preys_B) {
	global.hpB -= round(irandom_range(6,12)*global.dmgbuff*global.art1buff)
}
if instance_exists(prey_B) {
	global.hpB -= round(irandom_range(6,12)*global.dmgbuff*global.art1buff)
}
if instance_exists(summoner_B) {
	global.hpB -= round(irandom_range(6,12)*global.dmgbuff*global.art1buff)
}
if instance_exists(healer_B) {
	global.hpB -= round(irandom_range(6,12)*global.dmgbuff*global.art1buff)
}
if instance_exists(leech_B) {
	global.hpB -= round(irandom_range(6,12)*global.dmgbuff*global.art1buff)
}
if instance_exists(bs_1) {
	global.hpB -= round(irandom_range(6,12)*global.dmgbuff*global.art1buff)
}
if instance_exists(en_C) {
	global.hpC -= round(irandom_range(6,12)*global.dmgbuff*global.art1buff)
}
if instance_exists(prey_C) {
	global.hpC -= round(irandom_range(6,12)*global.dmgbuff*global.art1buff)
}
if instance_exists(drone_C) {
	global.hpC -= round(irandom_range(6,12)*global.dmgbuff*global.art1buff)
}
if instance_exists(spiky_C) {
	global.hpC -= round(irandom_range(6,12)*global.dmgbuff*global.art1buff)
}
if instance_exists(suppressor_C) {
	global.hpC -= round(irandom_range(6,12)*global.dmgbuff*global.art1buff)
}
if instance_exists(bigbomb_C) {
	global.hpC -= round(irandom_range(6,12)*global.dmgbuff*global.art1buff)
}
global.dmgbuff = 1;
instance_create_depth(0,0,-12,ans_hit)
instance_destroy(selected)
instance_destroy(desc_laser_swipe)
global.acts -= 1;
global.cd3 = 3;
image_alpha = 0.5;
}
if global.acts = 0 {
	instance_destroy(self)
}