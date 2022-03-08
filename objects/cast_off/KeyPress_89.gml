if instance_exists(desc_cast_off) && !instance_exists(check_desc) {
instance_destroy(selected)
global.selfdmg = 5;
instance_create_depth(0,0,-12,ans_hit)
instance_destroy(desc_cast_off)
audio_play_sound(s_command_stack, 1, false)
global.hull -= global.maxhull/20;
global.acts = round(global.acts * 1.5);
if global.oprecast = 0 {
global.op3 = 0;
image_alpha = 0.25
}
else {
	global.oprecast = 0;
}
}