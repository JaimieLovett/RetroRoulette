part_system = part_system_create();

// Asteroid Debris
part_type_asteroid_debris = part_type_create();
part_type_sprite(part_type_asteroid_debris, sAsteroidDebris, false, false, true);
part_type_life(part_type_asteroid_debris, 60, 80);
part_type_alpha3(part_type_asteroid_debris, .3, .3, 0);
part_type_direction(part_type_asteroid_debris, 0, 359, 0, false);
part_type_orientation(part_type_asteroid_debris, 0, 359, 1, false, false);
part_type_speed(part_type_asteroid_debris, 2, 2.4, -0.02, 0);

// Space Invader Debris
part_type_space_invader_1_debris = part_type_create();
part_type_sprite(part_type_space_invader_1_debris, sSpaceInvader1Debris, false, false, true);
part_type_size(part_type_space_invader_1_debris, .5, 1, 0, 0);
part_type_life(part_type_space_invader_1_debris, 60, 80);
part_type_alpha3(part_type_space_invader_1_debris, .3, .3, 0);
part_type_direction(part_type_space_invader_1_debris, 0, 359, 0, false);
part_type_orientation(part_type_space_invader_1_debris, 0, 359, 1, false, false);
part_type_speed(part_type_space_invader_1_debris, 3, 4, -0.05, 0);
part_type_gravity(part_type_space_invader_1_debris, 0.1, 270);

part_type_space_invader_2_debris = part_type_create();
part_type_sprite(part_type_space_invader_2_debris, sSpaceInvader2Debris, false, false, true);
part_type_size(part_type_space_invader_2_debris, .5, 1, 0, 0);
part_type_life(part_type_space_invader_2_debris, 60, 80);
part_type_alpha3(part_type_space_invader_2_debris, .3, .3, 0);
part_type_direction(part_type_space_invader_2_debris, 0, 359, 0, false);
part_type_orientation(part_type_space_invader_2_debris, 0, 359, 1, false, false);
part_type_speed(part_type_space_invader_2_debris, 3, 4, -0.05, 0);
part_type_gravity(part_type_space_invader_2_debris, 0.1, 270);

part_type_space_invader_3_debris = part_type_create();
part_type_sprite(part_type_space_invader_3_debris, sSpaceInvader3Debris, false, false, true);
part_type_size(part_type_space_invader_3_debris, .5, 1, 0, 0);
part_type_life(part_type_space_invader_3_debris, 60, 80);
part_type_alpha3(part_type_space_invader_3_debris, .3, .3, 0);
part_type_direction(part_type_space_invader_3_debris, 0, 359, 0, false);
part_type_orientation(part_type_space_invader_3_debris, 0, 359, 1, false, false);
part_type_speed(part_type_space_invader_3_debris, 3, 4, -0.05, 0);
part_type_gravity(part_type_space_invader_3_debris, 0.1, 270);

// Pong Ball Debris
part_type_pong_ball_debris = part_type_create();
part_type_sprite(part_type_pong_ball_debris, sPongBallDebris, false, false, true);
part_type_size(part_type_pong_ball_debris, .5, 1, 0, 0);
part_type_life(part_type_pong_ball_debris, 60, 80);
part_type_alpha3(part_type_pong_ball_debris, .3, .3, 0);
part_type_direction(part_type_pong_ball_debris, 0, 359, 0, false);
part_type_orientation(part_type_pong_ball_debris, 0, 359, 1, false, false);
part_type_speed(part_type_pong_ball_debris, 3, 8, -0.05, 0);
part_type_gravity(part_type_pong_ball_debris, 0.1, 270);

part_type_pong_ball_1_debris = part_type_create();
part_type_sprite(part_type_pong_ball_1_debris, sPongBall1Debris, false, false, true);
part_type_size(part_type_pong_ball_1_debris, .5, 1, 0, 0);
part_type_life(part_type_pong_ball_1_debris, 60, 80);
part_type_alpha3(part_type_pong_ball_1_debris, .3, .3, 0);
part_type_direction(part_type_pong_ball_1_debris, 0, 359, 0, false);
part_type_orientation(part_type_pong_ball_1_debris, 0, 359, 1, false, false);
part_type_speed(part_type_pong_ball_1_debris, 3, 8, -0.05, 0);
part_type_gravity(part_type_pong_ball_1_debris, 0.1, 270);

part_type_pong_ball_2_debris = part_type_create();
part_type_sprite(part_type_pong_ball_2_debris, sPongBall2Debris, false, false, true);
part_type_size(part_type_pong_ball_2_debris, .5, 1, 0, 0);
part_type_life(part_type_pong_ball_2_debris, 60, 80);
part_type_alpha3(part_type_pong_ball_2_debris, .3, .3, 0);
part_type_direction(part_type_pong_ball_2_debris, 0, 359, 0, false);
part_type_orientation(part_type_pong_ball_2_debris, 0, 359, 1, false, false);
part_type_speed(part_type_pong_ball_2_debris, 3, 8, -0.05, 0);
part_type_gravity(part_type_pong_ball_2_debris, 0.1, 270);

part_type_pong_ball_3_debris = part_type_create();
part_type_sprite(part_type_pong_ball_3_debris, sPongBall3Debris, false, false, true);
part_type_size(part_type_pong_ball_3_debris, .5, 1, 0, 0);
part_type_life(part_type_pong_ball_3_debris, 60, 80);
part_type_alpha3(part_type_pong_ball_3_debris, .3, .3, 0);
part_type_direction(part_type_pong_ball_3_debris, 0, 359, 0, false);
part_type_orientation(part_type_pong_ball_3_debris, 0, 359, 1, false, false);
part_type_speed(part_type_pong_ball_3_debris, 3, 8, -0.05, 0);
part_type_gravity(part_type_pong_ball_3_debris, 0.1, 270);

// Bullet Debris
part_type_muzzle_flash_debris = part_type_create();
part_type_sprite(part_type_muzzle_flash_debris, sBulletDebris, false, false, true);
part_type_size(part_type_muzzle_flash_debris, .5, 1, 0, 0);
part_type_life(part_type_muzzle_flash_debris, 60, 80);
part_type_alpha3(part_type_muzzle_flash_debris, .2, .2, 0);
part_type_direction(part_type_muzzle_flash_debris, 0, 359, 0, false);
part_type_orientation(part_type_muzzle_flash_debris, 0, 359, 1, false, false);
part_type_speed(part_type_muzzle_flash_debris, 3, 4, -0.05, 0);

part_type_bullet_debris = part_type_create();
part_type_sprite(part_type_bullet_debris, sBulletDebris, false, false, true);
part_type_size(part_type_bullet_debris, .5, 1, 0, 0);
part_type_life(part_type_bullet_debris, 60, 80);
part_type_alpha3(part_type_bullet_debris, .2, .2, 0);
part_type_direction(part_type_bullet_debris, 0, 359, 0, false);
part_type_orientation(part_type_bullet_debris, 0, 359, 1, false, false);
part_type_speed(part_type_bullet_debris, 3, 4, -0.05, 0);

// Exhaust
part_type_exhaust = part_type_create();
part_type_sprite(part_type_exhaust, sExhaust, false, false, false);
part_type_size(part_type_exhaust, .4, .4, 0.05, 0);
part_type_color3(part_type_exhaust, c_white, c_ltgray, c_gray);
part_type_alpha3(part_type_exhaust, 1, 1, 0);
part_type_life(part_type_exhaust, 20, 20);

// Pong Ball Trail
part_type_pong_ball_trail = part_type_create();
part_type_sprite(part_type_pong_ball_trail, sPongBallTrail, false, false, false);
part_type_size(part_type_pong_ball_trail, .7, .7, 0.05, 0);
part_type_alpha3(part_type_pong_ball_trail, 0.2, 0.2, 0);
part_type_life(part_type_pong_ball_trail, 20, 20);

part_type_pong_ball_1_trail = part_type_create();
part_type_sprite(part_type_pong_ball_1_trail, sPongBallTrail, false, false, false);
part_type_size(part_type_pong_ball_1_trail, .7, .7, 0.05, 0);
part_type_color3(part_type_pong_ball_1_trail, c_red, c_maroon, c_maroon);
part_type_alpha3(part_type_pong_ball_1_trail, 0.4, 0.4, 0);
part_type_life(part_type_pong_ball_1_trail, 20, 20);

part_type_pong_ball_2_trail = part_type_create();
part_type_sprite(part_type_pong_ball_2_trail, sPongBallTrail, false, false, false);
part_type_size(part_type_pong_ball_2_trail, .7, .7, 0.05, 0);
part_type_color3(part_type_pong_ball_2_trail, c_orange, c_red, c_maroon);
part_type_alpha3(part_type_pong_ball_2_trail, 0.4, 0.4, 0);
part_type_life(part_type_pong_ball_2_trail, 20, 20);

part_type_pong_ball_3_trail = part_type_create();
part_type_sprite(part_type_pong_ball_3_trail, sPongBallTrail, false, false, false);
part_type_size(part_type_pong_ball_3_trail, .7, .7, 0.05, 0);
part_type_color3(part_type_pong_ball_3_trail, c_yellow, c_orange, c_red);
part_type_alpha3(part_type_pong_ball_3_trail, 0.4, 0.4, 0);
part_type_life(part_type_pong_ball_3_trail, 20, 20);

// Pong Ball Collision
part_type_smoke_effect = part_type_create();
part_type_sprite(part_type_smoke_effect, sPongBallDebris, false, false, true);
part_type_size(part_type_smoke_effect, 1, 2, 0, 0);
part_type_life(part_type_smoke_effect, 20, 40);
part_type_color_mix(part_type_smoke_effect, c_white, c_grey);
part_type_alpha3(part_type_smoke_effect, .3, .3, 0);
part_type_direction(part_type_smoke_effect, 0, 359, 0, false);
part_type_orientation(part_type_smoke_effect, 0, 359, 1, false, false);
part_type_speed(part_type_smoke_effect, 1, 2, -0.05, 0);

part_type_pong_enemy_paddle_debris = part_type_create();
part_type_sprite(part_type_pong_enemy_paddle_debris, sPongBallDebris, false, false, true);
part_type_size(part_type_pong_enemy_paddle_debris, .5, 1, 0, 0);
part_type_life(part_type_pong_enemy_paddle_debris, 60, 80);
part_type_alpha3(part_type_pong_enemy_paddle_debris, .3, .3, 0);
part_type_direction(part_type_pong_enemy_paddle_debris, 230, 300, 0, false);
part_type_orientation(part_type_pong_enemy_paddle_debris, 0, 359, 1, false, false);
part_type_speed(part_type_pong_enemy_paddle_debris, 3, 8, -0.05, 0);
part_type_gravity(part_type_pong_enemy_paddle_debris, 0.1, 270);

// Breakout Brick Debris
part_type_breakout_brick_debris = part_type_create();
part_type_sprite(part_type_breakout_brick_debris, sBreakoutBrickDebris, false, false, true);
part_type_size(part_type_breakout_brick_debris, .5, 1, 0, 0);
part_type_life(part_type_breakout_brick_debris, 60, 80);
part_type_alpha3(part_type_breakout_brick_debris, .3, .3, 0);
part_type_direction(part_type_breakout_brick_debris, 230, 300, 0, false);
part_type_orientation(part_type_breakout_brick_debris, 0, 359, 1, false, false);
part_type_speed(part_type_breakout_brick_debris, 3, 8, -0.05, 0);
part_type_gravity(part_type_breakout_brick_debris, 0.1, 270);

part_type_breakout_brick_1_debris = part_type_create();
part_type_sprite(part_type_breakout_brick_1_debris, sBreakoutBrick1Debris, false, false, true);
part_type_size(part_type_breakout_brick_1_debris, .5, 1, 0, 0);
part_type_life(part_type_breakout_brick_1_debris, 60, 80);
part_type_alpha3(part_type_breakout_brick_1_debris, .3, .3, 0);
part_type_direction(part_type_breakout_brick_1_debris, 230, 300, 0, false);
part_type_orientation(part_type_breakout_brick_1_debris, 0, 359, 1, false, false);
part_type_speed(part_type_breakout_brick_1_debris, 3, 8, -0.05, 0);
part_type_gravity(part_type_breakout_brick_1_debris, 0.1, 270);

part_type_breakout_brick_2_debris = part_type_create();
part_type_sprite(part_type_breakout_brick_2_debris, sBreakoutBrick2Debris, false, false, true);
part_type_size(part_type_breakout_brick_2_debris, .5, 1, 0, 0);
part_type_life(part_type_breakout_brick_2_debris, 60, 80);
part_type_alpha3(part_type_breakout_brick_2_debris, .3, .3, 0);
part_type_direction(part_type_breakout_brick_2_debris, 230, 300, 0, false);
part_type_orientation(part_type_breakout_brick_2_debris, 0, 359, 1, false, false);
part_type_speed(part_type_breakout_brick_2_debris, 3, 8, -0.05, 0);
part_type_gravity(part_type_breakout_brick_2_debris, 0.1, 270);

part_type_breakout_brick_3_debris = part_type_create();
part_type_sprite(part_type_breakout_brick_3_debris, sBreakoutBrick3Debris, false, false, true);
part_type_size(part_type_breakout_brick_3_debris, .5, 1, 0, 0);
part_type_life(part_type_breakout_brick_3_debris, 60, 80);
part_type_alpha3(part_type_breakout_brick_3_debris, .3, .3, 0);
part_type_direction(part_type_breakout_brick_3_debris, 230, 300, 0, false);
part_type_orientation(part_type_breakout_brick_3_debris, 0, 359, 1, false, false);
part_type_speed(part_type_breakout_brick_3_debris, 3, 8, -0.05, 0);
part_type_gravity(part_type_breakout_brick_3_debris, 0.1, 270);

part_type_breakout_brick_4_debris = part_type_create();
part_type_sprite(part_type_breakout_brick_4_debris, sBreakoutBrick4Debris, false, false, true);
part_type_size(part_type_breakout_brick_4_debris, .5, 1, 0, 0);
part_type_life(part_type_breakout_brick_4_debris, 60, 80);
part_type_alpha3(part_type_breakout_brick_4_debris, .3, .3, 0);
part_type_direction(part_type_breakout_brick_4_debris, 230, 300, 0, false);
part_type_orientation(part_type_breakout_brick_4_debris, 0, 359, 1, false, false);
part_type_speed(part_type_breakout_brick_4_debris, 3, 8, -0.05, 0);
part_type_gravity(part_type_breakout_brick_4_debris, 0.1, 270);