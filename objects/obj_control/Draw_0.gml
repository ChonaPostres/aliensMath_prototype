if (global.cooldown == 0) {
	draw_set_color(c_white);
	draw_text(170, 250, global.questions_lvl1[global.question_lvl1_index].question);
	draw_text(96+70, 608+60, global.questions_lvl1[global.question_lvl1_index].a);
	draw_text(448+70, 608+60, global.questions_lvl1[global.question_lvl1_index].b);
	draw_text(800+70, 608+60, global.questions_lvl1[global.question_lvl1_index].c);
	draw_text(1120+70, 608+60, global.questions_lvl1[global.question_lvl1_index].d);
} else {
	if (global.correct) {
		draw_text(170, 250, "Correcto!!! :)");	
	} else {
		draw_text(170, 250, "Incorrecto :(");	
	}
	draw_text(96+70, 608+60, "...");
	draw_text(448+70, 608+60, "...");
	draw_text(800+70, 608+60, "...");
	draw_text(1120+70, 608+60, "...");
}
