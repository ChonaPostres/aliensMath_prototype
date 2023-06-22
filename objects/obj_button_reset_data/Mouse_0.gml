/// @description Resetear data de puntos obtenido por el jugador
// Puede escribir su código en este editor
audio_play_sound(snd_beep, 0, false);
player_score = []
if (file_exists(working_directory + "player_score.json")) {
	var json_lvl_score = "";
	// Lectura player_score.json
	var file = file_text_open_read(working_directory + "player_score.json");
	while(file_text_eof(file) == false) {
		json_lvl_score += file_text_readln(file);
	}
	file_text_close(file);
	var json_data_lvl_score = [];
	json_data_lvl_score = json_parse(json_lvl_score);
	player_score = json_data_lvl_score;
	if (array_length(player_score) > 0) {
		player_score[0].lvl1 = 0;
		player_score[0].lvl2 = 0;
		player_score[0].lvl3 = 0;
		var json_string = json_stringify(player_score);
		// Escritura player_score.json
		file = file_text_open_write(working_directory +"player_score.json");
		if (file != -1) {
			file_text_write_string(file, json_string)
		    file_text_close(file);
			show_message("Datos del archivo player_score.json reseteados: "+string(player_score));
		}
	}
}