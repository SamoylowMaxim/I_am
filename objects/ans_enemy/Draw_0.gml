draw_set_font(font_description)
draw_set_color(c_white)
if global.dealtdmg = -1 {
	draw_text(448,552,"Processing...\nReinforcments had been made!")
}
if global.dealtdmg = -2 {
	draw_text(448,552,"Processing...\nEnemy resotres hull of its allies!")
}
if global.dealtdmg = -3 {
	draw_text(448,552,"Processing...\nEnemy will detonate in "+string(global.time)+" turn(s)!")
	draw_set_color(c_red)
	draw_set_font(font_xl)
	if instance_exists(bomber_A) {
	draw_text(700,64,string(global.time))
	}
	if instance_exists(bigbomb_C) {
	draw_text(1100,128,string(global.time))
	}
}
if global.dealtdmg = -4 {
	draw_text(448,552,"Processing...\nEnemy activates spikes for turn!\nDirect damage not recommended.")
}
if global.dealtdmg = -5 {
	draw_text(448,552,"Processing...\nEnemy protects allies for turn!\nDirect damage taken is halved.")
}
if global.dealtdmg = -6 {
	draw_text(448,552,"Processing...\nEnemy activates leeching!\nIts next attack will heal itself.")
}
if global.dealtdmg = -7 {
	draw_text(448,552,"Processing...\nEnemy burrows into hull!\nActs will be reduced by 1.")
}
if global.dealtdmg = -8 {
	draw_text(448,552,"Processing...\nEnemy activates overdirve!\nVarious increases.")
}
if global.dealtdmg >= 0 {
	draw_set_color(c_white)
	if global.dealtdmg >= 20 {
	draw_text(448,552,"Processing...\nEnemy strikes significantly!\nTaken DMG: "+string(round(global.dealtdmg)))
	}
	else {
		draw_text(448,552,"Processing...\nEnemy strikes!\nTaken DMG: "+string(round(global.dealtdmg)))
	}
}