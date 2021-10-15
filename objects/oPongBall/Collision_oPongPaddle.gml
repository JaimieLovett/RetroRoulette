
if (other.can_push_ball) {
	h_speed = clamp(-h_speed * 1.2, -10, 10);
	other.can_push_ball = false;
	other.alarm[0] = room_speed * 1;
}