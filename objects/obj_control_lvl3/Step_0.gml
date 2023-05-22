/// @description Spawner
// Puede escribir su código en este editor
if (!global.pause_lvl) {
	timer--;
} 
if (global.cooldown > 0) global.cooldown--;
if (timer <= 0 and enemies < global.quesstions_lvl1_size && !global.pause_lvl) {
	instance_create_layer(1300,224,"Instances",obj_enemy);
	timer = 300;
	enemies++;
	global.enemies_created++;
}
if (global.enemies_defeated >= global.max_enemies and popup) {
	popup = false;
	global.win_lvl = true;
	if (global.max_score < global.score) {
		global.new_record = true;
		global.max_score = global.score;
		global.lvl_score[0].lvl3 = global.max_score;
		var json_string = json_stringify(global.lvl_score);
		var file = file_text_open_write(working_directory +"player_score.json");
		if (file != -1) {
			file_text_write_string(file, json_string)
		    file_text_close(file);
		}
		
	}
	enemies = global.quesstions_lvl1_size;
	instance_create_layer(450, 230,"popup",obj_popup);
	instance_create_layer(530, 400,"popup_button",obj_button_back_menu);
	instance_create_layer(800, 400,"popup_button",obj_button_try_again);
}
if (global.lose_lvl and popup) {
	enemies = global.quesstions_lvl1_size;
	if (global.max_score < global.score) {
		global.new_record = true;
		global.max_score = global.score;
		global.lvl_score[0].lvl3 = global.max_score;
		var json_string = json_stringify(global.lvl_score);
		var file = file_text_open_write(working_directory +"player_score.json");
		if (file != -1) {
			file_text_write_string(file, json_string)
		    file_text_close(file);
		}
	}
	popup = false;
	instance_create_layer(450, 230,"popup",obj_popup);
	instance_create_layer(530, 400,"popup_button",obj_button_back_menu);
	instance_create_layer(800, 400,"popup_button",obj_button_try_again);
}