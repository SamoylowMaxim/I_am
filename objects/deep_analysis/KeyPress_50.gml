if global.cd2def = 0 && !instance_exists(check_desc) {
instance_destroy(selected)
instance_destroy(ans_hit)
instance_destroy(ans_enemy)
instance_destroy(desc_hit1)
instance_destroy(desc_deep_analysis)
instance_destroy(desc_command_stack)
instance_create_depth(x,y,-11,selected)
instance_create_depth(0,0,-10,desc_deep_analysis)
audio_play_sound(s_select,1,false)
}