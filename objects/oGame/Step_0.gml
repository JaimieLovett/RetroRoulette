if (select_new_game) {
	select_new_game = false
	cleanup();
	
	previous_room = global.current_game;
	while (previous_room = global.current_game) {
		global.current_game = choose("asteroids", "pong", "space_invaders");
	}
	
	switch(global.current_game) {
		case "asteroids":
			setup_asteroids();
			break;
		case "space_invaders":
			setup_space_invaders();
			break;
		case "pong":
			setup_pong();
			break;
		default: break;
	}
	global.new_game_starting = true;
	instance_deactivate_all(true);
	if (alarm[2] == -1) alarm[2] = room_speed * global.game_starting_timer;
}

// If our game is past the starting stage, execute the win condition script.
if (!global.new_game_starting) {
	script_execute(win_condition_script);
}