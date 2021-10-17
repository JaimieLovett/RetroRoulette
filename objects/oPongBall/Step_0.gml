if (bbox_bottom > room_height || bbox_top < 0) {
	v_speed = - v_speed;
}

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