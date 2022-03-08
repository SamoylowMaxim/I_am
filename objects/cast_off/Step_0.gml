if global.acts = 0 {
	if instance_exists(en_A) {
	global.actA = 1
	}
	if instance_exists(en_B) {
	global.actB = 1
	}
	if instance_exists(en_C) {
	global.actC = 1
	}
	instance_create_depth(x,y,-10,turnend)
	instance_destroy(self)
}