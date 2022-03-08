if !instance_exists(art_box) {
instance_create_depth(193,96,1,art_box)
instance_create_depth(193,96,-2,art_desc)
global.desc = 1
audio_play_sound(s_select,1,false)
image_alpha = 0
}