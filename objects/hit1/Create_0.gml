if global.cd1def > 0 {
	image_alpha = 0.5
}
instance_create_depth(x+102,y,-10,deep_analysis)
if global.cd2def > 0 {
	deep_analysis.image_alpha = 0.5
}
instance_create_depth(x+204,y,-10,command_stack)
if global.cd3def > 0 {
	command_stack.image_alpha = 0.5
}