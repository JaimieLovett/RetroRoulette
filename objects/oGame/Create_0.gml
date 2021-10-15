randomize();

global.current_game = "";
global.game_type = "";
global.timer = 5;
global.new_game_starting = false;
global.game_starting_timer = 3;
win_condition_script = 0;
global.win_condition_string = "";
select_new_game = true;
paused_surface = -1;

room_goto(rGame);