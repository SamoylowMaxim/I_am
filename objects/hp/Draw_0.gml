draw_set_font(font)
draw_set_color(c_green)
if global.encounter < 18 {
draw_text(x,y,"A-Ns: "+string(global.hp)+"/"+string(global.maxhp))
}
else {
	draw_text(x,y,"Hull: "+string(round(global.hull))+"/"+string(global.maxhull))
}