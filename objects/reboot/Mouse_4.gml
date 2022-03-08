if global.op1 = 1 && !instance_exists(check_desc) {
instance_destroy(selected)
instance_destroy(ans_hit)
instance_destroy(ans_enemy)
instance_destroy(desc_reboot)
instance_destroy(desc_melting_heat)
instance_destroy(desc_cast_off)
instance_create_depth(x,y,-11,selected)
instance_create_depth(0,0,-10,desc_reboot)
audio_play_sound(s_select,1,false)
}