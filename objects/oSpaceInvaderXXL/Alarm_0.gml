if (times_moved_h >= 12) {
	times_moved_h = 0;
	right = !right;
}
else {
	if (right) x += x_move;
	else x -= x_move;
	times_moved_h++;
}

image_index = !image_index;