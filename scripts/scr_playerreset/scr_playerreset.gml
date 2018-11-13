with (obj_player)
{
	image_alpha = 1.0;
	sprite_index = spr_default;
	global.pwrd_up=0;
	global.HasPower = false;
	global.archer_power = 0;
	global.knight_power = 0;
	global.powerupshield = 0;
	global.jester_power = 0;
	global.lancer_power = 0;
	global.infiltrator_power = 0;
	playermaxspd = 10;
	KShieldActive = false;
	audio_play_sound(snd_reset,1,false);
}