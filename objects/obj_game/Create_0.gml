/// @description Initialize game controller variables

//Set score
score = 0;

//Set number of player lives
lives = 3;

//Set the font for the HUD
draw_set_font(fnt_text);

//Adds up total win score
//4 huge rocks (10 + 20 + 20 + 50 + 50 + 50 + 50)
win_score = 4 * 250;

//6 med rocks (20 + 50 + 50)
win_score += 6 * 120;