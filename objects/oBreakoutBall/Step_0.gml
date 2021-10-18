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