setup_breakout_destroy();
timer = 10;
win_condition_script = win_condition_pong_goalkeeper;
win_condition_script_arg = timer;
game_title = "GOALKEEPER";
global.player_control_script = player_control_breakout_destroy;