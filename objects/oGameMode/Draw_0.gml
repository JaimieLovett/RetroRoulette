if (global.new_game_starting) {
	draw_set_alpha(1);
	var c_r = c_navy;
	draw_rectangle_colour(0, 50, room_width, 150, c_r, c_r, c_r, c_r, false);
	draw_rectangle_colour(0, 250, room_width, 400, c_r, c_r, c_r, c_r, false);
	var c = c_lime;
	draw_set_halign(fa_center);
	draw_set_font(fHUDTitle);
	draw_text_color(room_width / 2, 80, game_title, c, c, c, c, 1);
	draw_set_font(fHUDDescription);
	draw_text_color(room_width / 2, 300, game_description, c, c, c, c, 1);
}
else {
	draw_set_alpha(1);
	var c = c_white;
	draw_set_halign(fa_center);
	draw_set_font(fTimer);
	draw_text_color(room_width / 2, (room_height / 2) - 50, timer, c, c, c, c, 0.1);
}

if (global.win_game) {
	draw_set_alpha(1);
	var c = c_lime;
	draw_set_halign(fa_center);
	draw_set_font(fHUDTitle);
	draw_text_color(room_width / 2, (room_height / 2) - 50, "SUCCESS", c, c, c, c, 1);
}