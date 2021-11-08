//audio_play_sound(sndMenuSelect, 1, false);

switch(menu_index) {
	case 0:
		global.game_over = false;
		room_goto(rGame);
		reset_stats();
		break;
		
	case 1:
		room_goto(rStart);
		break;
		
	case 2:
		game_end();
		break
}