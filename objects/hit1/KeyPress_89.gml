if instance_exists(desc_hit1) && global.acts > 0 && !instance_exists(check_desc) {
global.selfdmg = 0;
instance_destroy(selected)
instance_create_depth(0,0,-12,ans_hit)
instance_destroy(desc_hit1)
audio_play_sound(s_command_stack, 1, false)
global.acts -= 1;
global.cd1def = 2;
global.maxhp += 10;
global.temphp += 10;
if global.hp + 5 > global.maxhp {
global.hp = global.maxhp;
}
else {
global.hp += 5;
}

image_alpha = 0.5;
}