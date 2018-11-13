/// @description Gravity
ysp = ysp + grav;

if (place_meeting(x,y+ysp,obj_wall))
	{
		while(!place_meeting(x,y+ysp,obj_wall))
		{
			y += ysp;
		}
		ysp = (-ysp/10);
		if (ysp < 0.5)
		{
			ysp = 0;
		}
	}
y += ysp;

