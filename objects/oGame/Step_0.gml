if (select_new_game) {
	select_new_game = false
	cleanup();
	
	previous_room = global.current_game;
	while (previous_room = global.current_game) {
		global.current_game = choose("pong");	
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
}

script_execute(win_condition_script);