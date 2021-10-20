var _xx = x;
var _yy = y;

switch(sprite_index) {
	case sSpaceInvader1XXL:
		with (oParticles) {
			part_particles_create(part_system, _xx, _yy, part_type_space_invader_1_debris, 500);	
		}
		break;
				

	default: break;
}

screenshake(60, 2, 0.3);