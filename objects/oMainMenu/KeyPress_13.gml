//audio_play_sound(sndMenuSelect, 1, false);

switch(menu_index) {
	case 0:
		room_goto(rGame);
		reset_stats();
		break;
		
	case 1:
		game_end();
		break
}