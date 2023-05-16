/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
draw_set_color(c_white);
draw_set_font(fnt_text_game);
 if (global.enemies_defeated == global.max_enemies) {
	draw_text(683, 300, "Ganaste!!!");
	draw_text(170, 250,"Ganaste!!! :)");
	draw_text(96+70, 608+60, ":)");
	draw_text(448+70, 608+60, ":)");
	draw_text(800+70, 608+60, ":)");
	draw_text(1120+70, 608+60, ":)");
	draw_set_font(fnt_text_button);
	draw_text(545, 420,"Volver al Menu");
	draw_text(808, 420,"Volver a Intentar");
} else if (global.lose_lvl) {
	draw_text(600, 300, "La proxima lo haras mejor!");
	draw_text(170, 250,"Perdiste :(");
	draw_text(96+70, 608+60, ":(");
	draw_text(448+70, 608+60, ":(");
	draw_text(800+70, 608+60, ":(");
	draw_text(1120+70, 608+60, ":(");
	draw_set_font(fnt_text_button);
	draw_text(545, 420,"Volver al Menu");
	draw_text(808, 420,"Volver a Intentar");
} else if (global.pause_lvl) {
	draw_text(690, 300, "Menu de Pausa");
	draw_text(170, 250,".............");
	draw_text(96+70, 608+60, "...");
	draw_text(448+70, 608+60, "...");
	draw_text(800+70, 608+60, "...");
	draw_text(1120+70, 608+60, "...");
	draw_set_font(fnt_text_button);
	draw_text(545, 420,"Volver al Menu");
	draw_text(810, 420,"Seguir Jugando");
}	