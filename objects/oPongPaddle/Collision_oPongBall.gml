///@desc Shorten the paddle on collision with the ball
hit_counter++;

var _xx = x;
var _yy = y;
with (oParticles) {
	part_particles_create(part_system, _xx, _yy, part_type_pong_enemy_paddle_debris, 100);
}

if (global.current_game == "pong_score") {
	switch(hit_counter) {
		case 0:
			sprite_index = sEnemyPong;
			break;
		case 1:
			sprite_index = sEnemyPong1;
			break;
		case 2:
			sprite_index = sEnemyPong2;
			break;
		case 3:
			sprite_index = sEnemyPong3;
			break;
		case 4:
			sprite_index = sEnemyPong4;
			break;
		default: break;
	}
}
else if (global.current_game == "pong_score_xxl") {
	switch(hit_counter) {
		case 0:
			sprite_index = sEnemyPongXXL;
			break;
		case 1:
			sprite_index = sEnemyPongXXL1;
			break;
		case 2:
			sprite_index = sEnemyPongXXL2;
			break;
		case 3:
			sprite_index = sEnemyPongXXL3;
			break;
		case 4:
			sprite_index = sEnemyPongXXL4;
			break;
		case 5:
			sprite_index = sEnemyPongXXL5;
			break;
		case 6:
			sprite_index = sEnemyPongXXL6;
			break;
		case 7:
			sprite_index = sEnemyPongXXL7;
			break;
		case 8:
			sprite_index = sEnemyPongXXL8;
			break;
		case 9:
			sprite_index = sEnemyPongXXL9;
			break;
		case 10:
			sprite_index = sEnemyPongXXL10;
			break;
		default: break;
		
	}
}