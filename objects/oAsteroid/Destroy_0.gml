/// @desc Split larger asteroids into smaller ones
if sprite_index == sAsteroid_64 {
	repeat(2) {
		var _new_asteroid = instance_create_layer(x, y, "Instances", oAsteroid);
		_new_asteroid.sprite_index = sAsteroid_32;
	}
}
else if sprite_index == sAsteroid_32 {
	repeat(2) {
		var _new_asteroid = instance_create_layer(x, y, "Instances", oAsteroid);
		_new_asteroid.sprite_index = sAsteroid_16;
	}
}