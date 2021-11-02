// Loop until the current selected game is not one of the previous games we played.
while (array_value_exists(global.previous_games, global.current_game )|| global.current_game == "") {
	global.current_game = choose(
		"asteroids_destroy",
		"asteroids_survive",
		"space_invaders_destroy",
		"space_invaders_survive",
		"space_invaders_breakout",
		"space_invaders_yellow_xxl",
		"space_invaders_orange_xxl",
		"space_invaders_red_xxl",
		"pong_score",
		"pong_goalkeeper",
		"breakout_survive",
		"breakout_destroy",
		"breakout_invaders",
		"breakout_invader_yellow_xxl",
		"breakout_invader_orange_xxl",
		"breakout_invader_red_xxl",
	);
}

// If our previous games array has less than 3 entries, push our current game onto it.
// Else, delete the 1st entry in the array before pushing our current game.
if (array_length(global.previous_games) <= 2) {
	array_push(global.previous_games, global.current_game);	
}
else {
	array_delete(global.previous_games, 0, 1);
	array_push(global.previous_games, global.current_game);
}

switch(global.current_game) {
	case "asteroids_destroy":
		setup_asteroids_destroy();
		timer = 10;
		win_condition_script = win_condition_destroy;
		win_condition_script_arg = oAsteroid;
		game_title = "POP ROCKS";
		game_description = "Destroy all Asteroids before\nthe timer reaches 0.";
		global.player_control_script = player_control_asteroids;
		break;
	case "asteroids_survive":
		setup_asteroids_survive();
		timer = 5;
		win_condition_script = win_condition_timer;
		win_condition_script_arg = timer;
		game_title = "METEOR SHOWER";
		game_description = "Avoid the Asteroids.\n Destroying them will cause many more to spawn.";
		
		global.player_control_script = player_control_asteroids;
		break;
	case "space_invaders_destroy":
		setup_space_invaders_destroy();
		timer = 10;
		win_condition_script = win_condition_destroy;
		win_condition_script_arg = oSpaceInvader;
		game_title = "INVADERS MUST DIE";
		game_description = "Destroy all Invaders before\nthe timer reaches 0.";
		global.player_control_script = player_control_space_invaders;
		break;
	case "space_invaders_survive":
		setup_space_invaders_survive();
		timer = 10;
		win_condition_script = win_condition_timer;
		win_condition_script_arg = timer;
		game_title = "SURVIVE THE INVASION";
		game_description = "Avoid the Invader's bullets.";
		global.player_control_script = player_control_space_invaders;
		break;
	case "space_invaders_breakout":
		setup_space_invaders_breakout();
		timer = 10;
		win_condition_script = win_condition_destroy;
		win_condition_script_arg = oBreakoutBrick;
		game_title = "TILES MUST DIE";
		game_description = "Destroy all tiles before\nthe timer reaches 0.";
		global.player_control_script = player_control_space_invaders;
		break;
	case "space_invaders_yellow_xxl":
		setup_space_invaders_xxl(sSpaceInvader1XXL);
		timer = 1000;
		win_condition_script = win_condition_destroy;
		win_condition_script_arg = oSpaceInvaderXXL;
		game_title = "BIG OL' YELLOW";
		game_description = "Destroy BIG OL' YELLOW.";
		global.player_control_script = player_control_space_invaders;
		break;
	case "space_invaders_orange_xxl":
		setup_space_invaders_xxl(sSpaceInvader2XXL);
		timer = 1000;
		win_condition_script = win_condition_destroy;
		win_condition_script_arg = oSpaceInvaderXXL;
		game_title = "BIG OL' ORANGE";
		game_description = "Destroy BIG OL' ORANGE.";
		global.player_control_script = player_control_space_invaders;
		break;
	case "space_invaders_red_xxl":
		setup_space_invaders_xxl(sSpaceInvader3XXL);
		timer = 1000;
		win_condition_script = win_condition_destroy;
		win_condition_script_arg = oSpaceInvaderXXL;
		game_title = "BIG OL' RED";
		game_description = "Destroy BIG OL' RED.";
		global.player_control_script = player_control_space_invaders;
		break;
	case "pong_score":
		setup_pong_score();
		timer = 30;
		win_condition_script = win_condition_pong_score;
		win_condition_script_arg = -1;
		game_title = "GOAAAAL!";
		game_description = "Score a goal against the opponent before\nthe timer reaches 0.";
		global.player_control_script = player_control_pong;
		break;
	case "pong_goalkeeper":
		setup_pong_goalkeeper();
		timer = 10;
		win_condition_script = win_condition_pong_goalkeeper;
		win_condition_script_arg = timer;
		game_title = "GOALKEEPER";
		game_description = "Stop the balls going in the goal."
		global.player_control_script = player_control_pong;
		break;
	case "breakout_survive":
		setup_breakout_survive();
		timer = 10;
		win_condition_script = win_condition_timer;
		win_condition_script_arg = timer;
		game_title = "KEEPY UPPY";
		game_description = "Don't let the ball go out of play.";
		global.player_control_script = player_control_breakout_survive;
		break;
	case "breakout_destroy":
		setup_breakout_destroy();
		timer = 10;
		win_condition_script = win_condition_destroy;
		win_condition_script_arg = oBreakoutBrick;
		game_title = "BROKEN TILES";
		game_description = "Destroy all tiles before\nthe timer reaches 0.";
		global.player_control_script = player_control_breakout_destroy;
		break;
	case "breakout_invaders":
		setup_breakout_invaders();
		timer = 10;
		win_condition_script = win_condition_destroy;
		win_condition_script_arg = oSpaceInvader;
		game_title = "BROKEN INVADERS";
		game_description = "Destroy all Invaders before\nthe timer reaches 0.";
		global.player_control_script = player_control_breakout_destroy;
		break;
	case "breakout_invader_yellow_xxl":
		setup_breakout_invader_xxl(sSpaceInvader1XXL);
		timer = 1000;
		win_condition_script = win_condition_destroy;
		win_condition_script_arg = oSpaceInvaderXXL;
		game_title = "BIG OL' YELLOW";
		game_description = "Destroy BIG OL' YELLOW.";
		global.player_control_script = player_control_breakout_destroy;
		break;
	case "breakout_invader_orange_xxl":
		setup_breakout_invader_xxl(sSpaceInvader2XXL);
		timer = 1000;
		win_condition_script = win_condition_destroy;
		win_condition_script_arg = oSpaceInvaderXXL;
		game_title = "BIG OL' ORANGE";
		game_description = "Destroy BIG OL' ORANGE.";
		global.player_control_script = player_control_breakout_destroy;
		break;
	case "breakout_invader_red_xxl":
		setup_breakout_invader_xxl(sSpaceInvader3XXL);
		timer = 1000;
		win_condition_script = win_condition_destroy;
		win_condition_script_arg = oSpaceInvaderXXL;
		game_title = "BIG OL' RED";
		game_description = "Destroy BIG OL' RED.";
		global.player_control_script = player_control_breakout_destroy;
		break;
	default: break;	
}

// A new game is starting so deactivate all instances and set an alarm
// to start the game again after a set time.
global.new_game_starting = true;
if (alarm[2] == -1) alarm[2] = room_speed * game_starting_timer;