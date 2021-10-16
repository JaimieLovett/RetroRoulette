switch(room) {
	case rGame:	
		if (global.new_game_starting) {
			draw_set_alpha(1);
			draw_rectangle_colour(0, 0, room_width, room_height, c_black, c_black, c_black, c_black, false);
			var c = c_yellow;
			draw_set_halign(fa_center);
			draw_set_font(fHUDTitle);
			draw_text_color(room_width / 2, room_height / 2 - 50, win_condition_string, c, c, c, c, 1);
		}
		else {
			var c = c_white;
			draw_set_halign(fa_center);
			draw_set_font(fTimer);
			draw_text_color(room_width / 2, (room_height / 2) - 50, timer, c, c, c, c, 0.1);
		}
		break;
	default:  break;
}