if (other.can_push_ball) {
	h_speed = clamp(-h_speed * 1.2, -10, 10);
	v_speed = choose(-5, 5);
	other.can_push_ball = false;
	other.alarm[1] = room_speed * 0.5;
}