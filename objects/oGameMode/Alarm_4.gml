/// @desc Win game
global.win_game = false;
win_game_count = 0;
instance_activate_object(oPlayer);
room_goto(rGame);