/// @description Import JSON

// Función para desordenar un array utilizando el algoritmo de mezcla aleatoria (Fisher-Yates)
/// @param array El array que deseas desordenar
/// @return El array desordenado
if audio_is_playing(music_menu)
{
	audio_stop_sound(music_menu);
}

if !audio_is_playing(music_lvl)
{
  audio_play_sound(music_lvl, 1, true);
}

function shuffleArray(array)
{
    var arrayLength = array_length_1d(array);
    
    for (var i = arrayLength - 1; i > 0; i--)
    {
        var j = irandom_range(0, i);
        var temp = array[i];
        array[i] = array[j];
        array[j] = temp;
    }
    
    return array;
}

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
global.max_score = 0;
global.new_record = false;
global.lvl_score = [];
global.tutorial = false;
global.status_tutorial = -1;
global.advice3 = true;
global.status_advice = -1;
//
popup = true;
timer = 0;
enemies = 0;
if (file_exists(working_directory + "lvl3.json") && file_exists(working_directory + "player_score.json")) {
	var json_questions = "";
	var json_lvl_score = "";
	
	var file = file_text_open_read(working_directory + "lvl3.json");
	while(file_text_eof(file) == false) {
		json_questions += file_text_readln(file);
	}
	file_text_close(file);
	file = file_text_open_read(working_directory + "player_score.json");
	while(file_text_eof(file) == false) {
		json_lvl_score += file_text_readln(file);
	}
	file_text_close(file);
	var json_data_questions = [];
	var json_data_lvl_score = [];
	//show_message(json_lvl_score);
	json_data_questions = json_parse(json_questions);
	json_data_lvl_score = json_parse(json_lvl_score);
	//show_message(json_data_lvl_score[0].lvl1);
	global.lvl_score = json_data_lvl_score;
	global.questions_lvl1 = shuffleArray(json_data_questions);
	global.quesstions_lvl1_size = array_length(json_data_questions);
	global.max_score = json_data_lvl_score[0].lvl3;
	global.max_enemies = 10; // Número máximo de enemigos que el jugador tiene que derrotar
}