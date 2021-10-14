if (select_new_game) {
	select_new_game = false
	global.current_room = choose("space_invaders");
	
	switch(global.current_room) {
		case "asteroids":
			setup_asteroids()
			break;
		case "space_invaders":
			setup_space_invaders()
			break;
		default: break;
	}
}