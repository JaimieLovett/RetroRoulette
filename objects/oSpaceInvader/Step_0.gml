if alarm[0] == -1 alarm[0] = room_speed * move_delay;

switch(times_moved_v) {
	case 1:
		move_delay = 0.4;
		y_move = 20;
		x_move = 3;
		break;
	case 2:
		move_delay = 0.3;
		y_move = 25;
		break;
	case 3:
		move_delay = 0.2;
		y_move = 30;
		break;
	case 4:
		move_delay = 0.1;
		break;
}