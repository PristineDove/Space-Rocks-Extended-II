/// @description Draw HUD

switch (room)
{
	case rm_game:
	
//display score
draw_text(20, 20, "SCORE: " + string(score));

//display lives
draw_text(20, 40, "LIVES: " + string(lives));

//Add layer for debugging and playtesting
draw_text(room_width/2, 20, floor(timeline_position/room_speed));
	break;
	
case rm_start:
//Display title room text
draw_set_halign(fa_center);
var c=c_yellow;
draw_text_transformed_colour(room_width / 2, 100, "SPACE ROCKS", 3, 3,
0, c, c, c, c, 1);

draw_text(room_width / 2, 200,
@"Score 1,000 points to win!

UP: move
LEFT/RIGHT: change direction
SPACE: shoot

>>PRESS ENTER TO START<<");

	break;

case rm_win:
//You win room text
draw_set_halign(fa_center);
var c=c_lime;
draw_text_transformed_colour(room_width / 2, 200, "YOU WON!", 3, 3, 
0, c, c, c, c, 1);
draw_text(room_width / 2, 300, "PRESS ENTER TO RESTART");
draw_set_halign(fa_left);

	break;
	
case rm_gameover:
//Gameover room text
draw_set_halign(fa_center);
var c=c_red;
draw_text_transformed_colour(room_width / 2, 150, "GAME OVER", 3, 3, 
0, c, c, c, c, 1);
draw_text(room_width / 2, 250, "FINAL SCORE: " + string(score));
draw_text(room_width / 2, 300, "PRESS ENTER TO RESTART");
draw_set_halign(fa_left);

break;
}

draw_set_font(fnt_text);