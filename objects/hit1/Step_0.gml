if global.acts = 0 {
	if instance_exists(en_A) {
	global.actA = 1
	}
	if instance_exists(slow_prey_A) {
	global.actA = 1
	}
	if instance_exists(drone_A) {
	global.actA = 1
	}
	if instance_exists(bomber_A) {
	global.actA = 1
	}
	if instance_exists(berserker_A) {
	global.actA = 1
	}
	if instance_exists(protector_A) {
	global.actA = 1
	}
	if instance_exists(en_B) {
	global.actB = 1
	}
	if instance_exists(you_B) {
	global.actB = 1
	}
	if instance_exists(preys_B) {
	global.actB = 1
	}
	if instance_exists(prey_B) {
	global.actB = 1
	}
	if instance_exists(summoner_B) {
	global.actB = 1
	}
	if instance_exists(healer_B) {
	global.actB = 1
	}
	if instance_exists(leech_B) {
	global.actB = 1
	}
	if instance_exists(bs_1) {
		global.actB = 1
	}
	if instance_exists(en_C) {
	global.actC = 1
	}
	if instance_exists(prey_C) {
	global.actC = 1
	}
	if instance_exists(suppressor_C) {
	global.actC = 1
	}
	if instance_exists(spiky_C) {
	global.actC = 1
	}
	if instance_exists(drone_C) {
	global.actC = 1
	}
	if instance_exists(bigbomb_C) {
	global.actC = 1
	}
	instance_create_depth(x,y,-10,turnend)
	instance_destroy(self)
}