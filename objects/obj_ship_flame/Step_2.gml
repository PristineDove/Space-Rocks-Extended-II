/// @description Position flame behind ship

if (instance_exists(obj_ship)) //make sure ship exists
{
//Make rotation match the ship
image_angle = obj_ship.image_angle;

//Project the flame behind the ship
//going from the polar coordinate systme to the cartesion
x = lengthdir_x(sprite_width, image_angle - 180) + obj_ship.x;
y = lengthdir_y(sprite_width, image_angle - 180) + obj_ship.y;
}
else //if ship doesn't exist hide flame
{
	image_alpha = 0;
}