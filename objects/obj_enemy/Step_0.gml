/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if (hit > 0) instance_destroy();
if (global.win_lvl or global.lose_lvl or global.pause_lvl) {
	v = 0;
	motion_set(direction, v);
} else {
	v = 0.8;
	motion_set(direction, v);
}