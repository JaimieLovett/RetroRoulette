var _xx = x;
var _yy = y;

switch(img_idx) {
	case 0:
		with (oParticles) {
			part_particles_create(part_system, _xx, _yy, part_type_pong_ball_debris, 100);
		}
		break;
		
	case 1:
		with (oParticles) {
			part_particles_create(part_system, _xx, _yy, part_type_pong_ball_1_debris, 100);
		}
		break;
		
	case 2:
		with (oParticles) {
			part_particles_create(part_system, _xx, _yy, part_type_pong_ball_2_debris, 100);
		}
		break;
		
	case 3:	
		with (oParticles) {
			part_particles_create(part_system, _xx, _yy, part_type_pong_ball_3_debris, 100);
		}
		break;
		
	default: break;
}