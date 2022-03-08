draw_set_font(font_description)
draw_set_color(c_white)
if global.encounter = 6 {
	draw_text(50,50,"Creators are seem to be stopping me.\nScanning showed functionally suitable components\nMost optimal decision is made:")
}
else {
	if global.encounter = 12 {
	draw_text(50,50,"The last way lies ahead.\nScanning showed functionally suitable components\nMost optimal decision is made:")
	}
	else {
draw_text(50,50,"Encounter resolved. A-Nerves reseted to nominal\nScanning showed functionally suitable components\nMost optimal decision is made:")
}
}
if instance_exists(confirm) {
draw_text(88,300,"Restore part of lost Hull")
draw_text(88,400,"Increase A-Nerves overflow by 10")
}
else {
	draw_text(88,350,"Press any button to continue...")
}
draw_text(50,560,"Current Hull integrity: "+string(round(global.hull/global.maxhull*100))+"%")
draw_text(50,620,"Current A-Nerves capacity: "+string(global.maxhp - global.temphp))