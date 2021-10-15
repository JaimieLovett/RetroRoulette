///@desc Spawn balls for goalkeeper
if (global.current_game == "pong") {
	var _height = room_height / 2 + random_range(room_height/4, -room_height/4);
	instance_create_layer(room_width - 20, _height, "Enemies", oPongBall);
}