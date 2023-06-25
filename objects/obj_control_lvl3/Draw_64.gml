/// @description Insert description here
// You can write your code in this editor
if (global.advice3){
	global.pause_lvl = true;
	draw_set_font(fnt_text_game);
	draw_text(470, 200, "En el nivel 3, las ecuaciones consisten despejar");
	draw_text(470, 220, "el valor de 'x' en la ecuacion.");
	draw_set_font(fnt_text_button);
	draw_text(705, 425,"Entendido");		
	instance_create_layer(430, 180,"popup_advice1", obj_popup_advice1);
	instance_create_layer(445, 300,"image_advice3", obj_img_advice3);
	instance_create_layer(670, 400,"popup_confirm", obj_confirm_advice3);
	//instance_create_layer(450, 230,"popup",obj_popup);
}