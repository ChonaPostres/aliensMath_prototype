/// @description Import JSON
global.question_lvl1_index = 0;
global.quesstions_lvl1_size = 0;
global.questions_lvl1 = [];
global.cooldown = 0;
global.correct = true;
global.enemies_created = 0;
global.enemies_defeated = 0;
global.win_lvl = false;
global.lose_lvl = false;
global.pause_lvl = false;
popup = true;
timer = 0;
enemies = 0;
global.max_enemies = 0;
if (file_exists(working_directory + "lvl1.json")) {
	var json = "";
	
	var file = file_text_open_read(working_directory + "lvl1.json");
	while(file_text_eof(file) == false) {
		json += file_text_readln(file);
	}
	file_text_close(file);
	var json_data = [];
	json_data = json_parse(json);
	global.questions_lvl1 = json_data;
	global.quesstions_lvl1_size = array_length(json_data);
	
	global.max_enemies = 3; // Número máximo de enemigos que el spawner puede crear
}