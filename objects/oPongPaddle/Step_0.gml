var _reached_destination = y >= destination - max_speed && y <= destination + max_speed;
var _top_wall = sprite_height / 2;
var _bottom_wall = room_height - sprite_height / 2;

if (_reached_destination) {
	if (oPongBall.y < y) destination = clamp(oPongBall.y - irandom(75), _top_wall, _bottom_wall);
	else if (oPongBall.y > y) destination = clamp(oPongBall.y + irandom(75), _top_wall, _bottom_wall);
}

if (destination < y) current_speed = -max_speed;
else current_speed = max_speed;

y = clamp(y + current_speed, 0 + (sprite_height/2), camera_get_view_height(view_camera[0]) - (sprite_height/2));
