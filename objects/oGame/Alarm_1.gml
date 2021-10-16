///@desc Spawn balls for goalkeeper
if (current_game == "pong_goalkeeper" && room = rGame) {
	var _height = room_height / 2 + random_range(room_height/4, -room_height/4);
	instance_create_layer(room_width - 20, _height, "Enemies", oPongBall);
}