/// @description Spawner
// Puede escribir su código en este editor
timer--;
if (global.cooldown > 0) global.cooldown--;
if (timer <= 0 and enemies < global.max_enemies) {
	instance_create_layer(1300,224,"Instances",obj_enemy);
	timer = 300;
	enemies++;
	global.enemies_created++;
}