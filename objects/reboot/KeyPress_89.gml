if instance_exists(desc_reboot) && !instance_exists(check_desc) {
global.selfdmg = round((global.maxhp - global.hp)*2 / (global.maxhull/100))
global.hull -= (global.maxhp - global.hp)*2;
global.hp = global.maxhp;
instance_destroy(selected)
instance_create_depth(0,0,-12,ans_hit)
instance_destroy(desc_reboot)
audio_play_sound(s_command_stack, 1, false)
if global.oprecast = 0 {
global.op1 = 0;
image_alpha = 0.25
}
else {
	global.oprecast = 0
}
}