with(obj_player)
{
	if (obj_player.godmode = true)
	{
		if (KShieldActive= false)
		{
			obj_player.hp -= 0;
			obj_player.flash = 1;
		}
		else if (KShieldActive == true) 
		{
			with (other)
			{
				instance_destroy();
			}
		}
	}
	else if (obj_player.godmode = false)
	{
		if (KShieldActive= false)
		{
			obj_player.hp -= 7;
			obj_player.flash = 1;
		}
		else if (KShieldActive == true) 
		{
			with (other)
			{
				global.powerupshield += 1;
				instance_destroy();
			}
		}
	}
}
instance_destroy();

