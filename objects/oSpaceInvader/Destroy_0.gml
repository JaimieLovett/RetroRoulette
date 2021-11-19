global.destroyed_space_invaders++;

var _sound = sndInvaderDeath;
audio_stop_sound(_sound);
audio_sound_pitch(_sound, random_range(0.8, 1.2));
audio_play_sound(_sound, 0, false);

screen_freeze(global.screen_freeze_duration);

var _xx = x;
var _yy = y;

switch(sprite_index) {
	case sSpaceInvader1:
		with (oParticles) {
			part_particles_create(part_system, _xx, _yy, part_type_space_invader_1_debris, 100);	
		}
		break;
				
	case sSpaceInvader2:
		with (oParticles) {
			part_particles_create(part_system, _xx, _yy, part_type_space_invader_2_debris, 100);	
		}
		break;
				
	case sSpaceInvader3:
		with (oParticles) {
			part_particles_create(part_system, _xx, _yy, part_type_space_invader_3_debris, 100);	
		}
		break;

	default: break;
}

screenshake(30, 2, 0.4);