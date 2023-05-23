/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
json_data_lvl_score = [];
record_lvl1 = false;
record_lvl2 = false;
record_lvl3 = false;
if (file_exists(working_directory + "player_score.json")) {
	var json_lvl_score = "";
	var file = file_text_open_read(working_directory + "player_score.json");
	while(file_text_eof(file) == false) {
		json_lvl_score += file_text_readln(file);
	}
	file_text_close(file);
	json_data_lvl_score = json_parse(json_lvl_score);
	if (json_data_lvl_score[0].lvl1 > 0) {
		record_lvl1 = true;
		instance_create_layer(750, 200,"Menu_text",obj_trophy);
	} 
	if (json_data_lvl_score[0].lvl2 > 0) {
		record_lvl2 = true;
		instance_create_layer(750, 300,"Menu_text",obj_trophy);
	} 
	if (json_data_lvl_score[0].lvl3 > 0) {
		record_lvl3 = true;
		instance_create_layer(750, 400,"Menu_text",obj_trophy);
	}
}