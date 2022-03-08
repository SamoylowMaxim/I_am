draw_set_font(font)
draw_set_colour(c_red);

if global.acts = 0 {
draw_rectangle(64, 584, 80, 632, false)
if global.hull >= global.maxhull/10 {
	draw_rectangle(88, 584, 104, 632, false)
}
if global.hull >= global.maxhull*2/10 {
	draw_rectangle(112, 584, 128, 632, false)
}
if global.hull >= global.maxhull*3/10 {
	draw_rectangle(136, 584, 152, 632, false)
}
if global.hull >= global.maxhull*4/10 {
	draw_rectangle(160, 584, 178, 632, false)
}
if global.hull >= global.maxhull*5/10 {
	draw_rectangle(186, 584, 202, 632, false)
}
if global.hull >= global.maxhull*6/10 {
	draw_rectangle(210, 584, 226, 632, false)
}
if global.hull >= global.maxhull*7/10 {
	draw_rectangle(234, 584, 250, 632, false)
}
if global.hull >= global.maxhull*8/10 {
	draw_rectangle(258, 584, 274, 632, false)
}
if global.hull >= global.maxhull*9/10 {
	draw_rectangle(282, 584, 298, 632, false)
}

//next stuff
draw_set_color(c_white)
if global.hull >= global.maxhull/2 {
	
draw_text(64,680,"Hull status:")
if global.hull >= global.maxhull*3/4 {
	draw_text(64,708,"Optimal (100-75%)")
}
else{
	draw_text(64,708,"Admissible (75-50%)")
}
}
else{
draw_text(64,680,"Warning! Hull status:")	
if global.hull >= global.maxhull/4 {
	draw_text(64,708,"Disturbing (50-25%)")
}
else{
	draw_text(64,708,"Critical (25-0%)")
}
}
}
/*
draw_line_width(430,544,430,760,12)
draw_line_width(2,400,1328,400,12)
draw_line_width(8,400,8,544,12)
draw_line_width(1322,400,1322,544,12)
draw_line_width(8,544,8,760,12)
draw_line_width(2,544,1328,544,12)
draw_line_width(1322,544,1322,760,12)
draw_line_width(2,760,1328,760,12)
*/
