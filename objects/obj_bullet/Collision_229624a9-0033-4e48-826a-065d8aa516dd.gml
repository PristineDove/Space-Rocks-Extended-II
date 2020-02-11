/// @description Bullet and asteroid collision logic

score += 10;

//destory bullet
instance_destroy();

with (other) // enter into obj_asteroid name space
{

//destroy asteroid
instance_destroy();

//If asteroid is huge then spawn two medium asteroids
if (sprite_index == spr_asteroid_huge)
{
	score += 10;
	var i = 1;
	repeat(2)
	{
		var new_asteroid =
		instance_create_layer (x, y, "Instances", obj_asteroid);
		new_asteroid.sprite_index = spr_asteroid_med;
		//Double speed for smaller size asteroid
		new_asteroid.speed = new_asteroid.speed * 2;
		new_asteroid.direction = direction + 30 * i;
		i = -1;
		}
}

//if asteroid is medium then spawn two small asteroids
else if (sprite_index == spr_asteroid_med)
{
	score += 20;
	var i = 1;
	repeat(2)
	{
		var new_asteroid = instance_create_layer (x, y, "Instances", obj_asteroid);
		new_asteroid.sprite_index = spr_asteroid_small;	
		// Double speed for smaller size asteroid
		new_asteroid.speed = new_asteroid.speed * 2;
		new_asteroid.direction = direction + 30 * i;
		i = -1;
	}
}
else
{
	score += 50;
}

//Spawn debris in sky
repeat (10)
	{
		instance_create_layer(x, y, "Instances", obj_debris);
	}
}

//play audio
audio_play_sound(snd_die, 1, false);