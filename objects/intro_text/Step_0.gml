if skip > 0 {
	skip -= 1;
}

if num != 3 {
simv += 0.25;
}
else {
	if simv > 200 {
	simv += 0.05
	if simv >= 215 {
		room_goto(r_select)
	}
	}
	else {
		simv += 0.25
	}
}
if simv = 400 && num = 1 {
	num = 2;
	simv = 0;
}
if simv = 360 && num = 2 {
	num = 3;
	simv = 0;
}