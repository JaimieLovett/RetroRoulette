if (global.slow_mo) time_speed = 0.1;
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
	global.game_over = false;
	if alarm[3] == -1 alarm[3] = room_speed * 3;
}