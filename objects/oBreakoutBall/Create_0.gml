trail_counter = 0;
max_speed = 15;
h_speed = choose(random_range(-10, -8), random_range(8, 10));
v_speed = random_range(-10, -8);

did_collide = false;
scale_curve = animcurve_get_channel(animCurve, "scale"); 
percent = 0;

image_speed = 0;
image_index = 0;