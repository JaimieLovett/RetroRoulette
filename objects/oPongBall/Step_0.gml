if (!global.new_game_starting) {
	x += h_speed;
	y += v_speed;

	if (x < 0) gameover();

	// Particle FX.
	trail_counter++;
	
	if (trail_counter >= 4) {
		trail_counter = 0;
		var _xx = x;
		var _yy = y;
	
		switch(img_idx) {
			case 0:
				with (oParticles) {
					part_particles_create(part_system, _xx, _yy, part_type_pong_ball_trail, 1);
				}
				break;
		
			case 1:
				with (oParticles) {
					part_particles_create(part_system, _xx, _yy, part_type_pong_ball_1_trail, 1);
				}
				break;
		
			case 2:
				with (oParticles) {
					part_particles_create(part_system, _xx, _yy, part_type_pong_ball_2_trail, 1);
				}
				break;
		
			case 3:	
				with (oParticles) {
					part_particles_create(part_system, _xx, _yy, part_type_pong_ball_3_trail, 1);
				}
				break;
		
			default: break;
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
		image_index = prev_idx;
	}
}