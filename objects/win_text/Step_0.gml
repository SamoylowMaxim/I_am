if skip > 0 {
	skip -= 1;
}

simv += 0.2;
if simv >= 260 {
	ending -= 0.02;
}
if ending <= 0 {
	game_end();
}