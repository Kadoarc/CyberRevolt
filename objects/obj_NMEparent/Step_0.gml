
// Movement
xsp = dir*movespeed*knockback;
ysp += grav;

if (obj_player.x > x)
{
	image_xscale = -1
	mirror = image_xscale;
}
else
{
	image_xscale = 1
	mirror = image_xscale;
}
//Horizontal Collision
if (place_meeting(x+xsp,y,obj_wall))
{
while(!place_meeting(x+sign(xsp),y,obj_wall))
{
x += sign(xsp);
}
dir*=-1
}
x += xsp;

if (place_meeting(x+xsp,y,obj_inviswall))
{
while(!place_meeting(x+sign(xsp),y,obj_inviswall))
{
x += sign(xsp);
}
dir*=-1
}
x += xsp;


//Vertical Collision
if (place_meeting(x,y+ysp,obj_wall))
	{
		while(!place_meeting(x,y+sign(ysp),obj_wall))
			{
				y += sign(ysp);
			}
			ysp = 0;
			knockback = 0;
			dir = -1;
	}
y += ysp;


//Vertical Collision
if (place_meeting(x,y+ysp,obj_inviswall))
	{
		while(!place_meeting(x,y+sign(ysp),obj_inviswall))
			{
				y += sign(ysp);
			}
			ysp = 0;
			knockback = 0;
			dir = -1;
	}
y += ysp;



// Death
if (hp<=0)
{
	instance_destroy();
}
