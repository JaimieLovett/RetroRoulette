did_collide = true;

// Make the ball change sprites
image_index = 1;

// Choose a random horizontal and vertical speed.
h_speed = choose(random_range(-6, -5), random_range(5, 6));
v_speed = choose(random_range(-5, -3), random_range(3, 5));

// Multiply our speed if we're not above max speed
if (v_speed < max_speed) v_speed *= random_range(1.0, 1.5);
if (h_speed < max_speed) h_speed *= random_range(1.0, 1.5);

screenshake(30, 2, 0.3);

// Destroy the brick
instance_destroy(other);