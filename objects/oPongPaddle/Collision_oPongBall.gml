///@desc Shorten the paddle on collision with the ball
hit_counter++;

var _xx = x;
var _yy = y;
with (oParticles) {
	part_particles_create(part_system, _xx, _yy, part_type_pong_enemy_paddle_debris, 100);
}

switch(hit_counter) {
	case 0:
		image_index = sEnemyPong;
		break;
	case 1:
		image_index = sEnemyPong1;
		break;
	case 2:
		image_index = sEnemyPong2;
		break;
	case 3:
		image_index = sEnemyPong3;
		break;
	case 4:
		image_index = sEnemyPong4;
		break;
	default: break;
}