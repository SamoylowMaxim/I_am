draw_set_font(font)
draw_set_color(c_white)
if global.check = 1 {
	draw_text(x+32,y+32,"Analysis complete.\nModel: WF-01.\nUsed to execute various physical labor.\nNo specific characteristics found.")
}
//Basic enemy
if global.check = 2 {
	draw_text(x+32,y+32,"Analysis complete.\nModel: FS-12-J.\nManufactured by FS-12-M.\nArsenal examination suggests this model's\nmain objective is reconnaissance.\nSpecific characteristic: Low combat index.")
}
//Drone
if global.check = 3 {
	draw_text(x+32,y+32,"Analysis complete.\nModel: TB-03.\nOrigination unknown,\npossibly created after Creators' disappearance.\nSpecific characteristic: Self destructs, \ncausing significant impact wave.")
}
//Bomb
if global.check = 4 {
	draw_text(x+32,y+32,"Analysis complete.\nModel: EM-07.\nIts initial purpose of hard physical labor\nallows to maintain required tough carcass.\nSpecific characteristic: Increasing harm potential\nwith decreasing hull condition.")
}
//Berserk
if global.check = 5 {
	draw_text(x+32,y+32,"Analysis complete.\nModel: FR-70.\nSupportive model created to mend any physical damage\nand improve the condition further afterwards.\nSpecific characteristic: Restoration of allies comes at price\nof its own hull.")
}
//Healer
if global.check = 6 {
	draw_text(x+32,y+32,"Analysis complete.\nModel: FS-12-M.\nManufacturer of model FS-12-J.\nSpecific characteristic: If reached certain amount \nof producing, protocol changes to direct harming of a threat.")
}
//Summoner
if global.check = 7 {
	draw_text(x+32,y+32,"Analysis complete.\nModel: LB-36.\nOrigination unknown,\nmost likely created after Creators' disappearance.\nSpecific characteristic: Upon reaching critical Hull,\nattempt is made at restoring it\nby ripping parts of others' carcasses.")
}
//Leech
if global.check = 8 {
	draw_text(x+32,y+32,"Analysis complete.\nModel: AH-28.\nAccelerating thruster and destructive extension\nused to clear massive areas for Creators' buildings.\nSpecific characteristic: With each spin completed,\nharm potential increases.")
}
//Suppressor
if global.check = 9 {
	draw_text(x+32,y+32,"Analysis complete.\nModel: KS-11.\nObstructive model used to hinder\ntrespassers with sharp elongations.\nSpecific characteristic: Spikes appear to cover\nthe carcass from direct harm.")
}
//Spiky
if global.check = 10 {
	draw_text(x+32,y+32,"Analysis complete.\nModel: Purifier B1.\nToughest material of carcass allows it to cover allies.\nSpecific characteristic: High protecting ability.")
}
//Protector
if global.check = 11 {
	draw_text(x+32,y+32,"Analysis complete.\nModel: Purifier D2.\nDestructive weaponry used for extermination.\nSpecific characteristic: High assaulting ability.")
}
//Executioner
if global.check = 12 {
	draw_text(x+32,y+32,"Analysis complete.\nModel: Purifier R3.\nContains tremendous explosion potential.\nSpecific characteristic: Self destruction causes\nenormous impact wave, avoid at all costs.")
}
//Executioner
if global.check = 13 {
	draw_text(x+32,y+32,"Analysis complete.\nModel: Indefinable.\nSmall prey taken from walking pile of carcasses.\nSpecific characteristic: Slows down the target,\ngiving less available actions.")
}
//Slowing prey
if global.check = 14 {
	draw_text(x+32,y+32,"Analysis complete.\nModels: WF-01, FR-70, Indefinables.\nHas no unite control over own carcass, merged abomination.\nSpecific characteristic: Parts of its pile can detach,\nforming new entity.")
}
//Preys
if global.check = 15 {
	draw_text(x+32,y+32,"Analysis complete.\nModel: Indefinable.\nSmall prey formed from shattered abomination.\n No specific characteristics found.")
}
//Prey
if global.check = 16 {
	draw_text(x+32,y+32,"Analysis complete.\nModel: Corrupted Luceat.\n[Hidden potential of my own model,]\n[revealed by corrupting power of Creators.]\n[Is this what Creators did with all my kind?]\nSpecific characteristic: Emitting signal convokes\nnearby models to assist.")
}
//Yourself