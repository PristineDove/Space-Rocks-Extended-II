/// @description Fade out then disappear

//Subtract from alpha making sprite more translucent
image_alpha = image_alpha - 0.01;

//Once it is invisible destroy the debris
if (image_alpha <= 0)
{
	instance_destroy();
}