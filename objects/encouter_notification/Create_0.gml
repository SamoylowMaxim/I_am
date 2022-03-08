global.artlock -= 1;
num = 0;
global.encounter += 1;
if global.encounter = 3 && global.artlock = 0{
	num = choose(1,2);
	if num = 1 {
		global.art1 = 1;
	}
	if num = 2 {
		global.art2 = 1;
	}
	global.artlock = 1;
}

if global.encounter = 9 && global.artlock = 0{
	num = choose(3,4);
	if num = 3 {
		global.art3 = 1;
	}
	if num = 4 {
		global.art4 = 1;
	}
	global.artlock = 1;
}

if global.encounter = 15 && global.artlock = 0{
	num = choose(5,6);
	if num = 5 {
		global.art5 = 1;
	}
	if num = 6 {
		global.art6 = 1;
	}
	global.artlock = 1;
}

instance_create_depth(1020,560,-1,confirm)