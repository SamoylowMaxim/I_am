global.cd2 = 0;
global.cd3 = 0;
global.cd1def = 0;
global.cd2def = 0;
global.cd3def = 0;
global.maxhp -= global.temphp;
global.hp = global.maxhp;
global.temphp = 0;
global.acts = 2;
global.hull = round(global.hull)
if global.art5 = 1 {
	global.acts += 1;
}
global.dmgbuff = 1;
global.art1buff = 1;
global.oprecast = 0;
if global.art2 = 1 {
	global.oprecast = 1;
}
global.op1 = 1;
global.op2 = 1;
global.op3 = 1;
instance_create_depth(x-16,y+sprite_height+8,-10,hp)