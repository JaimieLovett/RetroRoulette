// If our game is past the starting stage, execute the win condition script.
if (!new_game_starting) {
	// If we have arguments for the win condition script, use them. Otherwise, just execute the win
	// condition script.
	if (win_condition_script_arg != -1) script_execute(win_condition_script, win_condition_script_arg);
	else script_execute(win_condition_script);
	// Reduce the timer by 1 per second.
	if timer >= 0 timer -= (1 / room_speed);
	if timer <= 0 timer = 0
}