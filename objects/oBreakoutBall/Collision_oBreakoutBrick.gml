can_collide = true;
collisionSnd = audio_play_sound(sndBallBounce, 1, false);
audio_sound_pitch(collisionSnd, irandom_range(0.8, 1.2));

did_collide = true;

// Make the ball change sprites
image_index = 1;

// Choose a random horizontal and vertical speed.
h_speed = choose(random_range(-6, -5), random_range(5, 6));
v_speed = choose(random_range(-5, -3), random_range(3, 5));

// Multiply our speed if we're not above max speed
if (v_speed < max_speed) v_speed *= random_range(1.0, 1.5);
if (h_speed < max_speed) h_speed *= random_range(1.0, 1.5);

// Destroy the brick
instance_destroy(other);

var _xx = x;
var _yy = y;
with (oParticles) {
	part_particles_create(part_system, _xx, _yy, part_type_smoke_effect, 5);
}