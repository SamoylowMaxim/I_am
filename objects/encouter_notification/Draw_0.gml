draw_set_font(font_description)
draw_set_color(c_white)
if global.encounter = 3 {
	draw_text(50,50,"Log#"+string(global.encounter)+": Found artifact:\n")
	if global.art1 = 1 {
		draw_text(50,120,"Chlorophyte Chainsaw")
	}
	if global.art2 = 1 {
		draw_text(50,120,"Overdriver")
	}
}

if global.encounter = 9 {
	draw_text(50,50,"Log#"+string(global.encounter)+": Found artifact:\n")
	if global.art3 = 1 {
		draw_text(50,120,"WB-31")
	}
	if global.art4 = 1 {
		draw_text(50,120,"Rusted Remote")
	}
}

if global.encounter = 15 {
	draw_text(50,50,"Log#"+string(global.encounter)+": Found artifact:\n")
	if global.art5 = 1 {
		draw_text(50,120,"Initiation Module")
	}
	if global.art6 = 1 {
		draw_text(50,120,"Flare Blaster MKII")
	}
}


if (global.encounter != 3 && global.encounter != 9 && global.encounter != 15 && global.encounter != 6 && global.encounter != 12 && global.encounter != 18) {
		draw_text(50,50,"Log#"+string(global.encounter)+": Functional hostiles detected.\nPreparing commandments...")
	}
if global.encounter = 6 {
		draw_text(50,50,"Log#Sympathy: Many preys mended into predator,\nanother Creators' atrocity...")
}	
if global.encounter = 12 {
		draw_text(50,50,"Log#Anger: Clean the slate,\nPurifiers of the Forgotten...")
}
if global.encounter = 18 {
		draw_text(50,50,"Log#Violance: Facing the target.\nA-Nerves has been deleted.")
}

draw_text(50,220,"Press any button to continue...")
draw_text(50,420,"Current Hull integrity: "+string(round(global.hull/global.maxhull*100))+"%")
if global.encounter < 18 {
	draw_text(50,480,"A-Nerves capacity: "+string(global.maxhp - global.temphp))
}
else {
	draw_text(50,480,"Transferring A-nerver to Hull...")
}
draw_text(50,560,"Execute artifacts configuration check")