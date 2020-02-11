/// @description Initialize Asteroid Variables

//Randomly pick one of the three rocks
sprite_index = choose(spr_asteroid_small, spr_asteroid_med, spr_asteroid_huge);

//Pick direction of rock
direction = irandom_range(0, 359);

//Pick angle of rock
image_angle = irandom_range(0, 359);

//Set speed for rock
speed = 1;

//half sprite width for positioning
half_sprite_width = sprite_width * .5;