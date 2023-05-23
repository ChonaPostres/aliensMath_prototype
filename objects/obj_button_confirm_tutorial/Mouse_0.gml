/// @description Inserte aquí la descripción
// Puede escribir su código en este editor


if (!global.pause_lvl) {
	instance_destroy();
}
if (global.pause_lvl && global.tutorial && global.status_tutorial == 0) {
	global.status_tutorial = 1;
	instance_create_layer(660, 440,"popup_button",obj_button_confirm_tutorial2);
	instance_destroy();
}