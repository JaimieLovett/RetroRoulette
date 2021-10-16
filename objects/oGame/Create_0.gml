randomize();

current_game = "";
global.previous_games[0] = -1;
global.new_game_starting = false;
game_starting_timer = 3;
win_condition_script = -1;
win_condition_script_arg = -1;
win_condition_string = "";
timer = 10;
global.player_control_script = "";

room_goto(rGame);