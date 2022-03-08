instance_destroy(refresh)
instance_create_depth(x+45,y+45,-14,refresh)
refresh.sprite_index = sp_refresh
cursor_sprite = sp_cursor
audio_play_sound(s_select, 1, false)
if instance_exists(hit) {
	instance_destroy(hit)
	instance_destroy(desc_hit)
	instance_destroy(measure_flare)
	instance_destroy(desc_measure_flare)
	instance_destroy(laser_swipe)
	instance_destroy(desc_laser_swipe)
	instance_destroy(selected)
	instance_create_depth(15,560,-9,reboot)
	sprite_index = sp_button3
	
}
else {
	if instance_exists(hit1) {
	instance_destroy(hit1)
	instance_destroy(desc_hit1)
	instance_destroy(deep_analysis)
	instance_destroy(desc_deep_analysis)
	instance_destroy(command_stack)
	instance_destroy(desc_command_stack)
	instance_destroy(selected)
	instance_create_depth(15,560,-9,hit)
	sprite_index = sp_button1
	}
	else {
		if instance_exists(reboot) {
			instance_destroy(reboot)
			instance_destroy(desc_reboot)
			instance_destroy(melting_heat)
			instance_destroy(desc_melting_heat)
			instance_destroy(cast_off)
			instance_destroy(desc_cast_off)
			instance_destroy(selected)
			instance_create_depth(15,560,-9,hit1)
			sprite_index = sp_button2
		}
	}
}
