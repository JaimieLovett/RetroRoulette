// Loop until the current selected game is not one of the previous games we played.
while (array_value_exists(global.previous_games, current_game )|| current_game == "") {
	current_game = choose(
		"asteroids_destroy",
		"asteroids_survive",
		"space_invaders_destroy",
		"space_invaders_survive",
		"pong_score",
		"pong_goalkeeper",
		"breakout_survive",
		"breakout_destroy",
	);
}

// If our previous games array has less than 3 entries, push our current game onto it.
// Else, delete the 1st entry in the array before pushing our current game.
if (array_length(global.previous_games) <= 2) {
	array_push(global.previous_games, current_game);	
}
else {
	array_delete(global.previous_games, 0, 1);
	array_push(global.previous_games, current_game);
}

switch(current_game) {
	case "asteroids_destroy":
		setup_asteroids_destroy();
		timer = 10;
		win_condition_script = win_condition_destroy;
		win_condition_script_arg = oAsteroid;
		win_condition_string = "DESTROY";
		global.player_control_script = player_control_asteroids;
		break;
	case "asteroids_survive":
		setup_asteroids_survive();
		timer = 5;
		win_condition_script = win_condition_timer;
		win_condition_script_arg = timer;
		win_condition_string = "SURVIVE";
		global.player_control_script = player_control_asteroids;
		break;
	case "space_invaders_destroy":
		setup_space_invaders_destroy();
		timer = 10;
		win_condition_script = win_condition_destroy;
		win_condition_script_arg = oSpaceInvader;
		win_condition_string = "DESTROY";
		global.player_control_script = player_control_space_invaders;
		break;
	case "space_invaders_survive":
		setup_space_invaders_survive();
		timer = 10;
		win_condition_script = win_condition_timer;
		win_condition_script_arg = timer;
		win_condition_string = "SURVIVE";
		global.player_control_script = player_control_space_invaders;
		break;
	case "pong_score":
		setup_pong_score();
		timer = 30;
		win_condition_script = win_condition_pong_score;
		win_condition_script_arg = -1;
		win_condition_string = "SCORE";
		global.player_control_script = player_control_pong;
		break;
	case "pong_goalkeeper":
		setup_pong_goalkeeper();
		timer = 10;
		win_condition_script = win_condition_pong_goalkeeper;
		win_condition_script_arg = timer;
		win_condition_string = "GOALKEEPER";
		global.player_control_script = player_control_pong;
		break;
	case "breakout_survive":
		setup_breakout_survive();
		timer = 10;
		win_condition_script = win_condition_timer;
		win_condition_script_arg = timer;
		win_condition_string = "SURVIVE";
		global.player_control_script = player_control_breakout_survive;
		break;
	case "breakout_destroy":
		setup_breakout_destroy();
		timer = 10;
		win_condition_script = win_condition_destroy;
		win_condition_script_arg = oBreakoutBrick;
		win_condition_string = "DESTROY";
		global.player_control_script = player_control_breakout_destroy;
		break;
	default: break;	
}

// A new game is starting so deactivate all instances and set an alarm
// to start the game again after a set time.
new_game_starting = true;
instance_deactivate_all(true);
if (alarm[2] == -1) alarm[2] = room_speed * game_starting_timer;