/// @description Asteroid Collision

if (in_game)
{
//Destroys the ship
instance_destroy();

//Create ship explosion
repeat (8)
{
	instance_create_layer(x, y, "Instances", obj_ship_explode);
}

//Subtract a life
lives -= 1;

//Play sound effect
audio_play_sound(snd_die, 1, false);

//Trigger alarm1 in obj_game which restarts the room
with (obj_game)
{
	alarm[1] = room_speed * 4;
}
}