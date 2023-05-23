
/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
//show_message(string(global.cooldown));
var alternative = global.questions_lvl1[global.question_lvl1_index].c;
if (global.cooldown == 0 && global.enemies_created > 0 && !global.win_lvl && !global.lose_lvl) {
		if (alternative == global.questions_lvl1[global.question_lvl1_index].correct) {
			image_index = 2;		
			instance_create_layer(global.player_x + 350, global.player_y + 70, "Instances", obj_energy_ball);
			global.reloading = 1;
			if (global.quesstions_lvl1_size - 1 > global.question_lvl1_index) global.question_lvl1_index++;
			//show_message("index: "+ string(global.question_lvl1_index));
			global.cooldown = 100;
			global.correct = true;
			alarm[0] = 100;
		} else {
			if (!global.tutorial) {
				image_index = 1;
				//set cooldown to current weaponspeed
				global.cooldown = 300;
				if (global.quesstions_lvl1_size - 1 > global.question_lvl1_index) global.question_lvl1_index++;
				global.correct = false;
				//global.max_enemies--;
				alarm[0] = 300;	
			} else {
				image_index = 1;
				global.cooldown = 100;
				global.correct = false;
				alarm[0] = 100;	
			}
		}
		
}