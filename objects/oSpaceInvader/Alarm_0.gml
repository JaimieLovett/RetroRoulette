if (times_moved_h >= 12) {
	y += y_move;
	times_moved_v += 1;
	times_moved_h = 0;
	right = !right;
}
else {
	if (right) x += x_move;
	else x -= x_move;
	times_moved_h++;
}

image_index = !image_index;