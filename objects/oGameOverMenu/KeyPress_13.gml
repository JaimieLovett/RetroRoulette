//audio_play_sound(sndMenuSelect, 1, false);

switch(menu_index) {
	case 0:
		room_goto(rGame);
		break;
		
	case 1:
		room_goto(rStart);
		break;
		
	case 2:
		game_end();
		break
}