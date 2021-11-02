///@desc Spawn balls for goalkeeper
if (global.current_game == "pong_goalkeeper") {
	var _height = room_height / 2 + random_range(room_height/4, -room_height/4);
	var _inst = instance_create_layer(room_width - 20, _height, "Enemies", oPongBall);
	_inst.v_speed = random_range(-5, 5);
}