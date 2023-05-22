/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if (hit > 0) {
	global.score = global.score + (1100 - timer_score);
	//show_message(string(global.score));
	timer_score = 0;
	instance_destroy();
}
if (global.win_lvl or global.lose_lvl or global.pause_lvl) {
	v = 0;
	motion_set(direction, v);
} else {
	timer_score++;
	v = 0.8;
	motion_set(direction, v);
}