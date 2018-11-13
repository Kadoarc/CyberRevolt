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
			obj_player.hp -= 5;
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
}
instance_destroy();

