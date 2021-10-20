trail_counter = 0;
max_speed = 15;
v_speed = choose(-10, -5)
h_speed = choose(-5, 5);

did_collide = false;
scale_curve = animcurve_get_channel(animCurve, "scale"); 
percent = 0;

image_speed = 0;
image_index = 0;

if (oGameMode.current_game == "breakout_survive") direction = random_range(45, 135);
else direction = random_range(70, 110);