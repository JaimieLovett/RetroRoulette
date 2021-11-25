if (!global.new_game_starting) {
	speed = spd;

	/// @desc Move asteroid
	move_wrap(true, true, sprite_width / 2);
	image_angle = image_angle + 1;
}