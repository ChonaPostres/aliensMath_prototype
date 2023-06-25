/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
draw_set_color(c_white);
draw_set_font(fnt_text_game);
 if (global.enemies_defeated == global.max_enemies) {
	draw_text(683, 300, "Ganaste!!!");
	if (global.new_record) {
		draw_text(683, 320, "Nuevo Record: "+ string(global.score));
	} else {
		draw_text(683, 320, "Puntos: "+ string(global.score));
	}
	
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
	if (global.new_record) {
		draw_text(683, 320, "Nuevo Record: "+ string(global.score));
	} else {
		draw_text(683, 320, "Puntos: "+ string(global.score));
	}
	draw_text(170, 250,"Perdiste :(");
	draw_text(96+70, 608+60, ":(");
	draw_text(448+70, 608+60, ":(");
	draw_text(800+70, 608+60, ":(");
	draw_text(1120+70, 608+60, ":(");
	draw_set_font(fnt_text_button);
	draw_text(545, 420,"Volver al Menu");
	draw_text(808, 420,"Volver a Intentar");
} else if (global.pause_lvl && global.status_tutorial == -1) {
	draw_text(690, 300, "Menu de Pausa");
	draw_text(170, 250,".............");
	draw_text(96+70, 608+60, "...");
	draw_text(448+70, 608+60, "...");
	draw_text(800+70, 608+60, "...");
	draw_text(1120+70, 608+60, "...");
	draw_set_font(fnt_text_button);
	draw_text(545, 420,"Volver al Menu");
	draw_text(810, 420,"Seguir Jugando");
} else if (global.tutorial && global.status_tutorial == 0) {
	draw_text(630, 240, "Hola, bienvenido al tutorial");
	draw_set_font(fnt_text_button);
	draw_text(470, 265, "Para jugar primero debes ver la ecuacion que contiene el arma laser");
	draw_text(470, 285, "Si la identificaste, veras que la ecuacion es:   x + 6 = 12");
	draw_text(470, 305, "Para resolverlo primero debes despejar la variable X pasando");
	draw_text(470, 325, "el numero 6 al lado derecho de la ecuacion, recuerda que");
	draw_text(470, 345, "el signo del numero cambia, en este caso pasa a restar al otro lado");
	draw_text(470, 365, "te quedara la siguiente ecuacion:     x = 12 - 6");
	draw_text(470, 405, "Presiona Okay para continuar...");
	
	draw_text(515, 450,"Volver al Menu");
	draw_text(850, 450,"Okay");
} else if (global.tutorial && global.status_tutorial == 1) {
	draw_text(630, 240, "Siguiente paso del tutorial");
	draw_set_font(fnt_text_button);
	draw_text(470, 265, "Te quedara la siguiente ecuacion:     x = 12 - 6");
	draw_text(470, 285, "12 menos 6 es igual a 6, luego de que resolviste la ecuacion, ahora");
	draw_text(470, 305, "debes indicarlo en la casillas de abajo, las cuales tienen las posibles");
	draw_text(470, 325, "respuestas a la ecuacion, debes tener cuidado con colocar la");
	draw_text(470, 345, "respuesta.");
	draw_text(470, 385, "Presiona Entiendo para jugar");
	
	draw_text(690, 465,"Entendido");
}