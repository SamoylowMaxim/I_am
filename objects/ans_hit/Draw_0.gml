draw_set_font(font_description)
draw_set_color(c_white)
if global.dealtdmg = -9 {
	draw_text(448,552,"Overdrive failed!\nEnemy suppressed the commandment.")
}
else
if global.selfdmg = 0 {
draw_text(448,552,"Executing commandment...\nTask performed successfully")
}
else {
	draw_text(448,552,"Overdrive commandment...\nLost "+string(global.selfdmg)+"% of hull")
}