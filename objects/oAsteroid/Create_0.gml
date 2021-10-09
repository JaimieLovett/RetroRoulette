/// @desc Select random sprite
sprite_index = choose(
	sAsteroid_16, sAsteroid_32, sAsteroid_64,
);

image_speed = 0;

direction = irandom_range(0, 359);
image_angle = irandom_range(0, 359);

speed = irandom_range(1, 2);