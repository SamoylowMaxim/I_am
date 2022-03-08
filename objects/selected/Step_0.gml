if global.acts = 0 {
	instance_destroy(self)
}
if instance_exists(ans_hit) {
	instance_destroy(self)
}