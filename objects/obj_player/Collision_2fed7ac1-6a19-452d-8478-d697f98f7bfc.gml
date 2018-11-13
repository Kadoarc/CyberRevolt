with (other)
{
	audio_play_sound(snd_powerup,1,false);
	instance_destroy();
}

scr_playerreset()
global.archer_power = 1;
global.infiltrator_power = 0;
global.jester_power = 0;
global.knight_power = 0;
global.lancer_power = 0;
global.HasPower = true;
alarm[0] = 250;
alarm [2] = (alarm[0]/2);
image_alpha = 1.0;
playermaxspd = 10;