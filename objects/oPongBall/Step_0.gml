if (bbox_bottom > room_height || bbox_top < 0) {
	v_speed = - v_speed;
}

x += h_speed;
y += v_speed;