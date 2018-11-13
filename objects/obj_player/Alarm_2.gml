/// @description Insert description here
// You can write your code in this editor
if image_alpha = 1.0{
	image_alpha = 0.3
} else
{
	image_alpha = 1.0	
}
if global.HasPower = true{
	alarm [2] = 4
}
else{
 image_alpha = 1.0
}

