if sprite_index == sAsteroidLarge {
	repeat(2) {
		var new_asteroid = instance_create_layer(x, y, "Instances", oAsteroid);
		new_asteroid.sprite_index = sAsteroidMedium;
	}
	
	screenshake(30, 3, 0.2);
}
else if sprite_index == sAsteroidMedium {
	repeat(2) {
		var new_asteroid = instance_create_layer(x, y, "Instances", oAsteroid);
		new_asteroid.sprite_index = sAsteroidSmall;
	}
	
	screenshake(30, 2, 0.3);
}
else {
	screenshake(30, 1, 0.4);
}