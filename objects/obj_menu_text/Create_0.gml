/// @description Insert description here
// You can write your code in this editor

//Descomentar el codigo de abajo para activar música

audio_play_sound(snd_beep, 0, false)

if audio_is_playing(music_lvl)
{
	audio_stop_sound(music_lvl);
}

if !audio_is_playing(music_menu)
{
	audio_play_sound(music_menu, 1, true);
}

