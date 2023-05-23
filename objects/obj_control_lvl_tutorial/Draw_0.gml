draw_set_font(fnt_text_score);
draw_set_color(c_white);
draw_text(20, 20, "PUNTOS:");
draw_set_color(c_aqua);
draw_text(130, 20, string(global.score));
draw_set_font(fnt_text_game);
draw_set_color(c_white);
if (global.cooldown == 0 and global.enemies_defeated < global.max_enemies and !global.lose_lvl and !global.pause_lvl and !global.win_lvl) {
	draw_text(170, 250, global.questions_lvl1[global.question_lvl1_index].question);
	draw_text(96+70, 608+60, global.questions_lvl1[global.question_lvl1_index].a);
	draw_text(448+70, 608+60, global.questions_lvl1[global.question_lvl1_index].b);
	draw_text(800+70, 608+60, global.questions_lvl1[global.question_lvl1_index].c);
	draw_text(1120+70, 608+60, global.questions_lvl1[global.question_lvl1_index].d);
} else if (global.cooldown > 0 and global.enemies_defeated < global.max_enemies) {
	if (global.correct and global.enemies_defeated < global.max_enemies) {
		draw_text(170, 250, "Correcto!!! :)");	
	} else {
		draw_text(170, 250, "Incorrecto :(");	
	}
	draw_text(96+70, 608+60, "...");
	draw_text(448+70, 608+60, "...");
	draw_text(800+70, 608+60, "...");
	draw_text(1120+70, 608+60, "...");
} else if (global.tutorial && global.pause_lvl) {
	draw_text(170, 250, global.questions_lvl1[global.question_lvl1_index].question);
	draw_text(96+70, 608+60, global.questions_lvl1[global.question_lvl1_index].a);
	draw_text(448+70, 608+60, global.questions_lvl1[global.question_lvl1_index].b);
	draw_text(800+70, 608+60, global.questions_lvl1[global.question_lvl1_index].c);
	draw_text(1120+70, 608+60, global.questions_lvl1[global.question_lvl1_index].d);
}

