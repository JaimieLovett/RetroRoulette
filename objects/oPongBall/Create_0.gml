h_speed = random_range(-10, -8)
v_speed = random_range(-5, 5);
trail_counter = 0;
image_speed = 0;
img_idx = 0;

did_collide = false;
scale_curve = animcurve_get_channel(animCurve, "scale"); 
percent = 0;

if (oGameMode.current_game = "pong_goalkeeper") {
	img_idx = choose(1, 2, 3);
}

image_index = img_idx;
prev_idx = image_index;