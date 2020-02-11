/// @description Spawn Rocks

//Flip coin
if (choose(0,1) == 0) //Left or right end random height
{
var xx = choose(0, room_width);
var yy = irandom_range(0, room_height);
}
else //Top or Bottom and random width
{
var xx = irandom_range(0, room_width);
var yy = choose(0, room_height);
}

//Create a new asteroid based on above coin toss
instance_create_layer(xx, yy, "instances", obj_asteroid);

//Call this alarm in 4 seconds
alarm[0] = 4 * room_speed;

if (room != rm_game)
{
exit;
}