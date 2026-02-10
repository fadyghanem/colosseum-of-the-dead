/// @description Insert description here
// You can write your code in this editor
// Play music
if(room == rm_preparation)
{
	audio_resume_sound(snd_game_loop2);
	if (!audio_is_playing(snd_game_loop2)) 
	{
		
		//audio_war_drums.pause
	    audio_play_sound(snd_game_loop2, 0, true);
	}
}
else {audio_pause_sound(snd_game_loop2)}
if(room == Room1)
{

	audio_resume_sound(snd_war_drums);
	if (!audio_is_playing(snd_war_drums)) 
	{
		var audio_war_drums = audio_play_sound(snd_war_drums, 0, true)
		audio_sound_gain(audio_war_drums, 5, 0);
	}
	
	if(obj_spawner.wave_cooldown != 0)
	{
		if (!audio_is_playing(snd_bell)) 
		{
			var audio_bell = audio_play_sound(snd_bell, 0, false)
			audio_sound_gain(audio_bell, 5, 0);
		}
	}
	else
	{
		if(chant)
		{
			if (!audio_is_playing(snd_crowd_chant)) 
			{
				var audio_crowd_chant = audio_play_sound(snd_crowd_chant, 0, false)
				audio_sound_gain(audio_crowd_chant, 0.7, 0);
			}
			chant = false;
			alarm[0] = 900;
		}
	}
}
else { audio_pause_sound(snd_war_drums) }
//show_debug_message(room)