key_left = keyboard_check(vk_left);
key_right = keyboard_check(vk_right);
key_up = keyboard_check(vk_up);
key_down = keyboard_check(vk_down);
key_space = keyboard_check(vk_space);

switch (global.current_game) {
	case "asteroids":
		player_control_asteroids();
		break;
	case "space_invaders":
		player_control_space_invaders();
		break;
	case "pong":
		player_control_pong();
		break;
	default: break;
}