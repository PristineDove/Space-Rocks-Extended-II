/// @description Ship Movement

if (in_game)
{
	//Turn ship counter-clockwise
	if (keyboard_check(vk_left))
	{
		image_angle = image_angle + rotation_angle_speed;
	}

	//Turn ship clockwise
	if (keyboard_check(vk_right))
	{
		image_angle = image_angle - rotation_angle_speed;
	}

	//Accelerate each frame
	if (keyboard_check(vk_up))
	{
		motion_add(image_angle, acceleration);
		//show flame
		image_index = 0;
		//Show flame on obj_ship_flame
		obj_ship_flame.image_alpha = 1;
	}
	else //Don't show flame
	{
		image_index = 1;
		//hide flame on obj_ship_flame
		obj_ship_flame.image_alpha = 0;
	}

	//Add friction
	speed = speed - ship_friction;

	//Clamp max and min speeds
	speed = clamp(speed, 0, max_speed);

	//Wrap ship horizontally and vertically
	move_wrap(true, true, half_sprite_width);

	//Shoot bullet and set angle to facing angle of ship
	/*if (keyboard_check_pressed(vk_space))
	{
		var inst =instance_create_layer(x, y, "Instances", obj_bullet);
		inst.direction = image_angle;
	}*/

	if (keyboard_check_pressed(vk_space))
	{
		audio_play_sound(snd_zap, 1, false);
		var inst = instance_create_layer(x, y, "Instances", obj_bullet);
		inst.direction = image_angle;
	}
}
