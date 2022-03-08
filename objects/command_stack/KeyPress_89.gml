if instance_exists(desc_command_stack) && global.acts > 0 &&  !instance_exists(check_desc){
global.selfdmg = 0;
instance_destroy(selected)
instance_create_depth(0,0,-12,ans_hit)
instance_destroy(desc_command_stack)
audio_play_sound(s_command_stack, 1, false)
global.acts -= 1;
global.cd3def = 6;
image_alpha = 0.5;
}
if global.acts = 0 {
	instance_destroy(self)
}