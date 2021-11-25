game_win_sprite = choose(sLogoAmazing, sLogoFantastic, sLogoPerfect, sLogoSuccess);

#region Select game
while (array_value_exists(global.previous_games, global.current_game )|| global.current_game == "") {
	global.current_game = choose(
		"asteroids_destroy",
		"asteroids_survive",
		"space_invaders_destroy",
		"space_invaders_survive",
		"space_invaders_breakout",
		"pong_score",
		"pong_goalkeeper",
		"breakout_survive",
		"breakout_destroy",
		"breakout_invaders",
		"pong_score_xxl",
		choose("space_invaders_yellow_xxl", "space_invaders_orange_xxl", "space_invaders_red_xxl", "breakout_invader_yellow_xxl", "breakout_invader_orange_xxl", "breakout_invader_red_xxl"),
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

#endregion

switch(global.current_game) {
	case "asteroids_destroy":
		#region Asteroids Destroy
		setup_asteroids_destroy();
		timer = 10;
		win_condition_script = win_condition_destroy;
		win_condition_script_arg = oAsteroid;
		game_title = sLogoPopRocks;
		game_description = "Destroy all Asteroids before\nthe timer reaches 0.";
		game_controls = "Accelerate - UP\nRotate - LEFT/RIGHT\nShoot: SPACEBAR";
		global.player_control_script = choose(player_control_asteroids_destroy_3, player_control_asteroids_destroy_8);
		break;
		#endregion
		
	case "asteroids_survive":
		#region Asteroids Survive
		setup_asteroids_survive();
		timer = 5;
		win_condition_script = win_condition_timer;
		win_condition_script_arg = timer;
		game_title = sLogoMeteorShower;
		game_description = "Avoid the Asteroids.\n Destroying them will cause many more to spawn.";
		game_controls = "Accelerate - UP\nRotate - LEFT/RIGHT\nShoot: SPACEBAR";
		global.player_control_script = player_control_asteroids_survive;
		break;
		#endregion
		
	case "space_invaders_destroy":
		#region Space Invaders Destroy
		setup_space_invaders_destroy();
		timer = 10;
		win_condition_script = win_condition_destroy;
		win_condition_script_arg = oSpaceInvader;
		game_title = sLogoInvadersMustDie;
		game_description = "Destroy all Invaders before\nthe timer reaches 0.";
		game_controls = "Move - LEFT/RIGHT\nShoot: SPACEBAR";
		global.player_control_script = player_control_space_invaders;
		break;
		#endregion
		
	case "space_invaders_survive":
		#region Space Invaders Survive
		setup_space_invaders_survive();
		timer = 10;
		win_condition_script = win_condition_timer;
		win_condition_script_arg = timer;
		game_title = sLogoSurviveTheInvasion;
		game_description = "Avoid the Invader's bullets.";
		game_controls = "Move - LEFT/RIGHT\nShoot: SPACEBAR";
		global.player_control_script = player_control_space_invaders;
		break;
		#endregion
		
	case "space_invaders_breakout":
		#region Space Invaders Breakout
		setup_space_invaders_breakout();
		timer = 10;
		win_condition_script = win_condition_destroy;
		win_condition_script_arg = oBreakoutBrick;
		game_title = sLogoTilesMustDie;
		game_description = "Destroy all tiles before\nthe timer reaches 0.";
		game_controls = "Move - LEFT/RIGHT\nShoot: SPACEBAR";
		global.player_control_script = player_control_space_invaders;
		break;
		#endregion
		
	case "space_invaders_yellow_xxl":
		#region Space Invaders Yellow XXL
		setup_space_invaders_xxl(sSpaceInvader1XXL);
		timer = 1000;
		win_condition_script = win_condition_destroy;
		win_condition_script_arg = oSpaceInvaderXXL;
		game_title = sLogoInvadersMustDie;
		game_description = "Destroy the GIANT invader.";
		game_controls = "Move - LEFT/RIGHT\nShoot: SPACEBAR";
		global.player_control_script = player_control_space_invaders;
		break;
		#endregion
		
	case "space_invaders_orange_xxl":
		#region Space Invaders Orange XXL
		setup_space_invaders_xxl(sSpaceInvader2XXL);
		timer = 1000;
		win_condition_script = win_condition_destroy;
		win_condition_script_arg = oSpaceInvaderXXL;
		game_title = sLogoInvadersMustDie;
		game_description = "Destroy the GIANT invader.";
		game_controls = "Move - LEFT/RIGHT\nShoot: SPACEBAR";
		global.player_control_script = player_control_space_invaders;
		break;
		#endregion
		
	case "space_invaders_red_xxl":
		#region Space Invaders Red XXL
		setup_space_invaders_xxl(sSpaceInvader3XXL);
		timer = 1000;
		win_condition_script = win_condition_destroy;
		win_condition_script_arg = oSpaceInvaderXXL;
		game_title = sLogoInvadersMustDie;
		game_description = "Destroy the GIANT invader.";
		game_controls = "Move - LEFT/RIGHT\nShoot: SPACEBAR";
		global.player_control_script = player_control_space_invaders;
		break;
		#endregion
		
	case "pong_score":
		#region Pong Score
		setup_pong_score();
		timer = 30;
		win_condition_script = win_condition_pong_score;
		win_condition_script_arg = -1;
		game_title = sLogoGoal;
		game_description = "Score a goal against the opponent before\nthe time runs out.";
		game_controls = "Move - UP/DOWN";
		global.player_control_script = player_control_pong;
		break;
		#endregion
		
	case "pong_score_xxl":
		#region Pong Score XXL
		setup_pong_score();
		timer = 3000;
		win_condition_script = win_condition_pong_score;
		win_condition_script_arg = -1;
		game_title = sLogoGoalXXL;
		game_description = "Score a goal against the opponent before\nthe timer reaches 0.";
		game_controls = "Move - UP/DOWN";
		global.player_control_script = player_control_pong;
		break;
		#endregion
		
	case "pong_goalkeeper":
		#region Pong Goalkeeper
		setup_pong_goalkeeper();
		timer = 10;
		win_condition_script = win_condition_pong_goalkeeper;
		win_condition_script_arg = timer;
		game_title = sLogoGoalkeeper;
		game_description = "Stop the balls going in the goal."
		game_controls = "Move - UP/DOWN";
		global.player_control_script = player_control_pong;
		break;
		#endregion
		
	case "breakout_survive":
		#region Breakout Survive
		setup_breakout_survive();
		timer = 10;
		win_condition_script = win_condition_timer;
		win_condition_script_arg = timer;
		game_title = sLogoKeepyUppy;
		game_description = "Don't let the ball go out of play.";
		game_controls = "Move - LEFT/RIGHT";
		global.player_control_script = player_control_breakout_survive;
		break;
		#endregion
		
	case "breakout_destroy":
		#region Breakout Destroy
		setup_breakout_destroy();
		timer = 10;
		win_condition_script = win_condition_destroy;
		win_condition_script_arg = oBreakoutBrick;
		game_title = sLogoBrokenTiles;
		game_description = "Destroy all tiles before\nthe timer reaches 0.";
		game_controls = "Move - LEFT/RIGHT\nShoot - SPACEBAR";
		global.player_control_script = player_control_breakout_destroy;
		break;
		#endregion
		
	case "breakout_invaders":
		#region Breakout Invaders
		setup_breakout_invaders();
		timer = 10;
		win_condition_script = win_condition_destroy;
		win_condition_script_arg = oSpaceInvader;
		game_title = sLogoBrokenInvaders;
		game_description = "Destroy all Invaders before\nthe timer reaches 0.";
			game_controls = "Move - LEFT/RIGHT\nShoot - SPACEBAR";
		global.player_control_script = player_control_breakout_destroy;
		break;
		#endregion
		
	case "breakout_invader_yellow_xxl":
		#region Breakout Invader Yellow XXL
		setup_breakout_invader_xxl(sSpaceInvader1XXL);
		timer = 1000;
		win_condition_script = win_condition_destroy;
		win_condition_script_arg = oSpaceInvaderXXL;
		game_title = sLogoInvadersMustDie;
		game_description = "Destroy the GIANT invader.";
		game_controls = "Move - LEFT/RIGHT\nShoot - SPACEBAR";
		global.player_control_script = player_control_breakout_destroy;
		break;
		#endregion
		
	case "breakout_invader_orange_xxl":
		#region Breakout Invader Orange XXL
		setup_breakout_invader_xxl(sSpaceInvader2XXL);
		timer = 1000;
		win_condition_script = win_condition_destroy;
		win_condition_script_arg = oSpaceInvaderXXL;
		game_title = sLogoInvadersMustDie;
		game_description = "Destroy the GIANT invader.";
		game_controls = "Move - LEFT/RIGHT\nShoot - SPACEBAR";
		global.player_control_script = player_control_breakout_destroy;
		break;
		#endregion
		
	case "breakout_invader_red_xxl":
		#region Breakout Invader Red XXL
		setup_breakout_invader_xxl(sSpaceInvader3XXL);
		timer = 1000;
		win_condition_script = win_condition_destroy;
		win_condition_script_arg = oSpaceInvaderXXL;
		game_title =sLogoInvadersMustDie;
		game_description = "Destroy the GIANT invader.";
		game_controls = "Move - LEFT/RIGHT\nShoot - SPACEBAR";
		global.player_control_script = player_control_breakout_destroy;
		break;
		#endregion
		
	default: break;	
}

// A new game is starting so deactivate all instances and set an alarm
// to start the game again after a set time.
global.new_game_starting = true;