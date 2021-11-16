if (global.win_game) {
	draw_sprite(game_win_sprite, 0, room_width / 2, room_height / 2)
}

if (global.new_game_starting) {
	// Draw a dark transparent rectangle that covers the screen.
	draw_set_alpha(0.9);
	var rectangle_c = c_black;
	draw_rectangle_colour(0, 0, room_width, room_width, rectangle_c, rectangle_c, rectangle_c, rectangle_c, false);
	
	draw_set_alpha(1);
	var description_c = c_lime;
	draw_set_halign(fa_center);
	draw_set_font(fHUDTitle);
	draw_sprite(game_title, 0, room_width / 2, 80);
	draw_set_font(fHUDDescription);
	draw_text_color(room_width / 2, 160, game_description, description_c, description_c, description_c, description_c, 1);
	
	draw_set_font(fPlay);
	draw_set_halign(fa_center);
	var play_again_text_c = c_lime;
	draw_text_color(room_width / 2, 420, "Press ENTER to begin...", play_again_text_c, play_again_text_c, play_again_text_c, play_again_text_c, 1);
}
else {
	draw_set_alpha(1);
	var c = c_white;
	draw_set_halign(fa_center);
	draw_set_font(fTimer);
	
	if (
		global.current_game != "space_invaders_yellow_xxl" and
		global.current_game != "space_invaders_orange_xxl" and
		global.current_game != "space_invaders_red_xxl" and
		global.current_game != "pong_score_xxl" and
		global.current_game != "breakout_invader_yellow_xxl" and
		global.current_game != "breakout_invader_orange_xxl" and
		global.current_game != "breakout_invader_red_xxl"
	) {
		var _timer_alpha = clamp(frac(timer), 0.1, 0.5);
		draw_text_color(room_width / 2, (room_height / 2) - 50, ceil(timer), c, c, c, c, _timer_alpha);
	}
}