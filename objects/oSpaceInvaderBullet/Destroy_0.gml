var _xx = x;
var _yy = y;

switch (sprite_index) {
	case sSpaceInvaderBullet1:
		with (oParticles) {
			part_particles_create(part_system, _xx, _yy, part_type_space_invader_1_debris, 100);	
		}
		break;
		
	case sSpaceInvaderBullet2:
		with (oParticles) {
			part_particles_create(part_system, _xx, _yy, part_type_space_invader_2_debris, 100);	
		}
		break;
		
	case sSpaceInvaderBullet3:
		with (oParticles) {
			part_particles_create(part_system, _xx, _yy, part_type_space_invader_3_debris, 100);	
		}
		break;
		
	case sSpaceInvaderBullet1XXL:
		with (oParticles) {
			part_particles_create(part_system, _xx, _yy, part_type_space_invader_1_debris, 100);	
		}
		break;
		
	case sSpaceInvaderBullet2XXL:
		with (oParticles) {
			part_particles_create(part_system, _xx, _yy, part_type_space_invader_2_debris, 100);	
		}
		break;
		
	case sSpaceInvaderBullet3XXL:
		with (oParticles) {
			part_particles_create(part_system, _xx, _yy, part_type_space_invader_3_debris, 100);	
		}
		break
		
	default: break;
}