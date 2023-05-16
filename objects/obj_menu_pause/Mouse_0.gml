/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if (!global.pause_lvl) {
	global.pause_lvl = true;
	instance_create_layer(450, 230,"popup",obj_popup);
	instance_create_layer(530, 400,"popup_button",obj_button_back_menu);
	instance_create_layer(800, 400,"popup_button",obj_button_continue);
}