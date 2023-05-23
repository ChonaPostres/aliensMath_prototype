draw_set_font(fnt_text_score);
draw_set_color(c_white);
draw_text(20, 20, "PUNTOS:");
draw_set_color(c_aqua);
draw_text(130, 20, string(global.score));
draw_set_font(fnt_text_game);
draw_set_color(c_white);
if (global.cooldown == 0 and global.enemies_defeated < global.max_enemies and !global.lose_lvl and !global.pause_lvl and !global.win_lvl) {
	draw_set_font(fnt_text_questions);
	draw_text(170, 250, global.questions_lvl1[global.question_lvl1_index].question);
	draw_set_font(fnt_text_alternatives);
	draw_text(96+60, 608+50, global.questions_lvl1[global.question_lvl1_index].a);
	draw_text(448+60, 608+50, global.questions_lvl1[global.question_lvl1_index].b);
	draw_text(800+60, 608+50, global.questions_lvl1[global.question_lvl1_index].c);
	draw_text(1120+60, 608+50, global.questions_lvl1[global.question_lvl1_index].d);
} else if (global.cooldown > 0 and global.enemies_defeated < global.max_enemies) {
	if (global.correct and global.enemies_defeated < global.max_enemies) {
		draw_set_font(fnt_text_game);
		draw_text(170, 250, "Correcto!!! :)");	
	} else {
		draw_set_font(fnt_text_game);
		draw_text(170, 250, "Incorrecto :(");	
	}
	draw_set_font(fnt_text_alternatives);
	draw_text(96+60, 608+50, "...");
	draw_text(448+60, 608+50, "...");
	draw_text(800+60, 608+50, "...");
	draw_text(1120+60, 608+50, "...");
} else if (global.tutorial && global.pause_lvl) {
	draw_set_font(fnt_text_questions);
	draw_text(170, 250, global.questions_lvl1[global.question_lvl1_index].question);
	draw_set_font(fnt_text_alternatives);
	draw_text(96+60, 608+50, global.questions_lvl1[global.question_lvl1_index].a);
	draw_text(448+60, 608+50, global.questions_lvl1[global.question_lvl1_index].b);
	draw_text(800+60, 608+50, global.questions_lvl1[global.question_lvl1_index].c);
	draw_text(1120+60, 608+50, global.questions_lvl1[global.question_lvl1_index].d);
}

