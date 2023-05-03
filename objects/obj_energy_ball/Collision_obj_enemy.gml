/// @description Eliminar Alien
// Puede escribir su código en este editor
instance_destroy();
with(other)
{
	hit = 1;
	global.enemies_created--;
	//show_message(string(global.enemies_created));
}
