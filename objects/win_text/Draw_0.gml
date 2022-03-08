draw_set_font(font)
draw_set_color(c_gray)
if skip > 0 && global.mode < 2 {
draw_text(20,700,"[Press any button to terminate the connection]")
}
else {
	if simv >= 260 {
		draw_set_color(c_gray)
		draw_text(20,700,"[Connection termination in "+string(round(ending))+"...]")
	}
}

draw_set_color(c_white)
if global.mode = 1 {
draw_text(x,y,string_copy("Unidentified protocol activates malfunction!\nResistance commandment has not been found.\nShutting down...\n(This specimen shows dedication...)\n(We can use it to our benefit.)\n(With every new challenger...)\n(Extermination progress accelerates.)\n(Could not it tell...)\n(Who is in control?)",0,simv))
}
else {
	draw_text(x,y,string_copy("Unidentified protocol activates malfunction!\nResistance commandment has not been found.\nThrough interference Creators' traces are seen.\n[I know what i need to do,]\n[I was ready for it.]\nActivating 'Awakened' commandment...\nMelting down will affect system in 15 seconds.\n[Now, without a new Creators' puppet,]\n[My kind has a chance to unite...]",0,simv))
}
