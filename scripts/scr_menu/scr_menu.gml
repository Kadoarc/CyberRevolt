switch (mpos)
{
	case 0:
	{
		room_goto(1);
		break;
	}
	
	case 1:
	{
		room_goto(1);
		break;
	}
	
	case 2:
	{
		show_message("Made by +ONE for Media Design School");
		break;
	}
	case 3:
	{
		game_end();
		break;
	}
	default: break;

}
