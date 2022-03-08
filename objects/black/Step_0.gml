t += 1
if t > 80 {
image_alpha += 0.005
}
if image_alpha >= 0.9 {
	global.a = -1;
}
if room = r_select {
	image_alpha += 0.005;
	if image_alpha >= 1 {
	room_goto(r_level_1);
	}
}