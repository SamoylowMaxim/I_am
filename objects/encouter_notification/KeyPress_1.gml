global.artlock = 1
if global.encounter = 3 {
	room_restart()
}
else {
	room_goto(r_battle)
}