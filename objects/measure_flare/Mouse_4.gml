if global.cd2 = 0 && !instance_exists(check_desc){
instance_destroy(selected)
instance_destroy(ans_hit)
instance_destroy(ans_enemy)
instance_destroy(desc_measure_flare)
instance_destroy(desc_laser_swipe)
instance_destroy(desc_hit)
instance_create_depth(x,y,-11,selected)
instance_create_depth(0,0,-10,desc_measure_flare)
audio_play_sound(s_select,1,false)
}