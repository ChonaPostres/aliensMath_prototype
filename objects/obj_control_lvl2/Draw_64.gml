/// @description Insert description here
// You can write your code in this editor
if (global.advice2){
	global.pause_lvl = true;
	draw_set_font(fnt_text_game);
	draw_text(470, 200, "En el nivel 2, las ecuaciones consisten encontrar el");
	draw_text(470, 220, "valor de 'x', en ecuaciones de multiplicacion y division.");
	draw_set_font(fnt_text_button);
	draw_text(705, 425,"Entendido");		
	instance_create_layer(430, 180,"popup_advice1", obj_popup_advice1);
	instance_create_layer(445, 260,"image_advice2", obj_img_advice2);
	instance_create_layer(670, 400,"popup_confirm", obj_confirm_advice2);
	//instance_create_layer(450, 230,"popup",obj_popup);
}