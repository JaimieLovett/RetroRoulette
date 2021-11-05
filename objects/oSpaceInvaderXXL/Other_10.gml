flash = 5;
hp--;

if (hp <= 0) {
	instance_destroy();	
}

screenshake(30, 2, 0.3);

var ca = instance_create_layer(0, 0, "EnemyFilter", obj_FTF_chromaticAberration); 
ca.desired_attack = 0;
ca.desired_release = 0;
ca.intensity = 0.2;

if alarm[2] == -1 alarm[2] = room_speed * 0.3;
