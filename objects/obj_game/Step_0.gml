/// @description Handle game starting and ingmae state

//if player presses enter in the rm_start then go to room game, if presses during
//rm_win or rm_gameover then restart the game
if (keyboard_check_pressed(vk_enter))
{
switch(room)
	{
		case rm_start:
		room_goto(rm_game);
		break;
	case rm_win:
	case rm_gameover:
		game_restart();
		break;
	}
}

// During gameplay and end game when score reached the end and go to win room
// or lose if lives get to 0 or below and go to gameover room
if room == rm_game
{
	if (score >= win_score)
	{
		if (!alarm[2])
		{
		audio_play_sound(snd_win, 1, false);
		}
		//Call alarm to change rooms
		if (!alarm[2])
		{
			alarm[2] = room_speed * 3.5;
		}
	}
}

if lives <= 0
	{
		if (!alarm[3])
		{
		audio_play_sound(snd_lose, 1, false);
		}
		//Call alarm to change rooms
		if (!alarm[3])
		{
		alarm[3] = room_speed * 3.5;
		}
	}
