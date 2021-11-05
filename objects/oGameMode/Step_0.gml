if (global.slow_mo) time_speed = 0.1;
else time_speed = 1;
room_speed = round(60*time_speed);

// If our game is past the starting stage, execute the win condition script.
if (!global.new_game_starting) {
	// If we have arguments for the win condition script, use them. Otherwise, just execute the win
	// condition script.
	if (win_condition_script_arg != -1) script_execute(win_condition_script, win_condition_script_arg);
	else script_execute(win_condition_script);
	// Reduce the timer by 1 per second.
	if timer >= 0 timer -= (1 / room_speed);
	if timer <= 0 timer = 0
}

if (global.game_over == true) {
	if alarm[3] == -1 alarm[3] = 20;
	global.game_over = false;
}

if (global.win_game == true && win_game_count <= 1) {
	var _xx = room_width / 2;
	var _yy = room_height / 2;
	with (oParticles) {
		part_particles_create(part_system, _xx, _yy, part_type_confetti, 32);	
		part_particles_create(part_system, _xx, _yy, part_type_more_confetti, 32);	
	}
	
	if alarm[4] == -1 alarm[4] = room_speed * 3;
	win_game_count++;
}