if (!global.new_game_starting) {
	x += h_speed;
	y += v_speed;


	// Particle FX.
	trail_counter++;
	
	if (trail_counter >= 4) {
		trail_counter = 0;
		var _xx = x;
		var _yy = y;

		with (oParticles) {
			part_particles_create(part_system, _xx, _yy, part_type_pong_ball_trail, 1);
		}
	}

	// When the ball collides, scale it using an animation curve
	if (did_collide) {
		percent += 1/15;
		if percent > 1 did_collide = false;

		scale = animcurve_channel_evaluate(scale_curve, percent);

		var _start = 1;
		var _end = 2;
		var _distance = _end - _start;

		image_xscale = _start + (_distance * scale);
		image_yscale = _start + (_distance * scale);
	
	}
	else {
		percent = 0;
		image_index = 0;
	}
}