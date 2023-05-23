/// @description Import JSON

// Variables Globales
global.question_lvl1_index = 0;
global.quesstions_lvl1_size = 0;
global.questions_lvl1 = [];
global.cooldown = 0;
global.correct = true;
global.enemies_created = 0;
global.enemies_defeated = 0;
global.max_enemies = 0;
global.win_lvl = false;
global.lose_lvl = false;
global.pause_lvl = false;
global.score = 0;
global.lvl_score = [];
global.new_record = false;
global.tutorial = true;
global.status_tutorial = 0;
//
popup = true;
timer = 0;
enemies = 0;
if (file_exists(working_directory + "lvl1.json") && file_exists(working_directory + "player_score.json")) {
	var json_questions = "";
	
	var file = file_text_open_read(working_directory + "lvl1.json");
	while(file_text_eof(file) == false) {
		json_questions += file_text_readln(file);
	}
	file_text_close(file);
	var json_data_questions = [];
	//show_message(json_lvl_score);
	json_data_questions = json_parse(json_questions);
	global.questions_lvl1 = json_data_questions;
	global.quesstions_lvl1_size = array_length(json_data_questions);
	global.max_enemies = 1; // Número máximo de enemigos que el jugador tiene que derrotar
	global.pause_lvl = true;
	instance_create_layer(450, 230,"popup",obj_popup);
	instance_create_layer(830, 430,"popup_button",obj_button_confirm_tutorial);
	instance_create_layer(500, 430,"popup_button",obj_button_back_menu);
}

