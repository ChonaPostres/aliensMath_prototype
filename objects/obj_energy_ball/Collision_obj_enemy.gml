/// @description Eliminar Alien
// Puede escribir su código en este editor
instance_destroy();
with(other)
{
	hit = 1;
	global.enemies_created--;
	global.enemies_defeated++;
	show_message("enemies_defeated: "+ string(global.enemies_defeated));
}
