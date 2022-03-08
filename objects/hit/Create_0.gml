instance_destroy(arrow)
instance_create_depth(x+102,y,-10,measure_flare)
if global.cd2 > 0 {
	measure_flare.image_alpha = 0.5
}

instance_create_depth(x+204,y,-10,laser_swipe)
if global.cd3 > 0 {
	laser_swipe.image_alpha = 0.5
}
instance_destroy(move_change)
instance_create_depth(332,y,-10,move_change)