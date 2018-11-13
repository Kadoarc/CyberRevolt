with (obj_player)
{
	if (obj_player.godmode = true)
	{
		obj_player.hp -= 0;
		obj_player.flash = 1;
	}
	else
	{
		scr_playerreset();
		obj_player.hp -=1;
		obj_player.flash = 1;
	}
}
instance_destroy();