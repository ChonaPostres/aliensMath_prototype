/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
draw_set_font(fnt_text_game);
draw_set_color(c_white);
draw_text(640, 150, "Trofeos");
draw_set_font(fnt_text_button);
if (record_lvl1) {
	draw_text(560, 250,"Puntos: "+string(json_data_lvl_score[0].lvl1));
} else {
	draw_text(560, 250,"Sin puntos");
}
if (record_lvl2) {
	draw_text(560, 350,"Puntos: "+string(json_data_lvl_score[0].lvl2));
} else {
	draw_text(560, 350,"Sin puntos");
}
if (record_lvl3) {
	draw_text(560, 450,"Puntos: "+string(json_data_lvl_score[0].lvl3));
} else {
	draw_text(560, 450,"Sin puntos");
}
draw_text(560, 200,"Nivel 1");
draw_text(560, 300,"Nivel 2");
draw_text(560, 400,"Nivel 3");
draw_text(660, 630,"Volver");