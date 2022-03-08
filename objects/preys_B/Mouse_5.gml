if instance_exists(hpB) {
	if !instance_exists(art_box) {
	instance_create_depth(193,96,-122,art_box)
	instance_create_depth(193,96,-123,check_desc)
	instance_create_depth(art_box.x+art_box.sprite_width-87,art_box.y+23,-124,confirm)
	global.check = 14
	audio_play_sound(s_select,1,false)
	}
}