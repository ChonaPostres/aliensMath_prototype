/// @description Inserte aquí la descripción
// Puede escribir su código en este editor


if (!global.pause_lvl) {
	instance_destroy();
}
if (global.pause_lvl && global.tutorial && global.status_tutorial == 1) {
	//global.tutorial = false;
	global.status_tutorial = -1;
	global.pause_lvl = false;
}