/// @description Start audio and launch rocks

if (room == rm_game)
{
//Stop song if alreadly playing
if audio_is_playing(msc_song)
{
audio_stop_sound(msc_song);
}
audio_play_sound(msc_song, 2, true);
	
//Spawn first rock
//scr_spawn_asteroid(spr_asteroid_small, 0, 0, 1, -30);
//scr_spawn_asteroid(spr_asteroid_huge, 0, 0, 1, -30);
//scr_spawn_asteroid(spr_asteroid_huge, 0.75, 1, 1, 100);
}

//Assign timeline
timeline_index = tl_asteroid_launching;

//Sets position to begining of timeline
timeline_position = 0;

//Starts timline
timeline_running = true;