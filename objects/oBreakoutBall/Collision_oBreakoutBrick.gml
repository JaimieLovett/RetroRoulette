// Make the ball change sprites
image_index = 1;
if alarm[0] == -1 alarm[0] = room_speed * ball_transform_delay;

// Scale the ball using an animation curve
percent += 1/60;
if percent > 1 percent -= 1;

x_scale = animcurve_channel_evaluate(x_curve, percent);
y_scale = animcurve_channel_evaluate(y_curve, percent);

var _start = 1;
var _end = 1.5;
var _distance = _end - _start;

image_xscale = _start + (_distance * x_scale);
image_yscale = _start + (_distance * y_scale);

// Choose a random horizontal and vertical speed.
h_speed = choose(random_range(-6, -5), random_range(5, 6));
v_speed = choose(random_range(-5, -3), random_range(3, 5));

// Multiply our speed if we're not above max speed
if (v_speed < max_speed) v_speed *= random_range(1.0, 1.5);
if (h_speed < max_speed) h_speed *= random_range(1.0, 1.5);

// Destroy the brick
instance_destroy(other);