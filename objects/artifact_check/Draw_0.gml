draw_set_font(font_description)
if !instance_exists(art_box) {
if global.art1 = 0 && global.art2 = 0 {
	draw_text(50,200,"No artifacts found yet...")
}
if global.art1 = 1 {
	draw_text(50,200,"Chlorophyte Chainsaw")
}
if global.art2 = 1 {
	draw_text(50,200,"Overdriver")
}
if global.art3 = 1 {
	draw_text(50,400,"WB-31's shell")
}
if global.art4 = 1 {
	draw_text(50,400,"Rusted Remote")
}
if global.art5 = 1 {
	draw_text(50,600,"Some module")
}
if global.art6 = 1 {
	draw_text(50,600,"Flare Blaster")
}
}