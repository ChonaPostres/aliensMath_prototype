/// @description Insert description here
// You can write your code in this editor
if (global.advice1){
	global.pause_lvl = true;
	draw_set_font(fnt_text_game);
	draw_text(500, 200, "En el nivel 1, las ecuaciones consisten encontrar");
	draw_text(500, 220, "el valor de 'x', en ecuaciones de suma y resta.");
	draw_set_font(fnt_text_button);
	draw_text(705, 425,"Entendido");		
	instance_create_layer(430, 180,"popup_advice1", obj_popup_advice1);
	instance_create_layer(445, 280,"image_advice", obj_img_advice1);
	instance_create_layer(670, 400,"popup_confirm", obj_confirm_advice1);
	//instance_create_layer(450, 230,"popup",obj_popup);
}