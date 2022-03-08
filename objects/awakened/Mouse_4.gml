if !instance_exists(black) {
instance_destroy(adj_resolute)
instance_destroy(adj_awakened)
instance_destroy(adj_inquisitive)
instance_destroy(input_line)
audio_play_sound(s_select,1,false)
instance_create_depth(0,0,-6,adj_awakened)
instance_create_depth(442,y-6,-6,input_line)
}