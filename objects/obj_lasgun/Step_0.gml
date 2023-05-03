if (global.reloading = 0) {
	alarm[0] = 15;
	alarm[1] = 30;
	alarm[2] = 45;
	alarm[3] = 60;
	alarm[4] = 75;
	alarm[5] = 90;
	alarm[6] = 105;
	global.reloading = 1;
} else {
	image_speed = 0;
	image_index = 0;	
}