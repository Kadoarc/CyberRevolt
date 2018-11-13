xsp = dir*movespeed;

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
if (place_meeting(x+xsp,y,obj_inviswall))
	{
		while(!place_meeting(x+sign(xsp),y,obj_inviswall))
			{
				x += sign(xsp);
			}
			dir *=-1;
	}
x += xsp;

image_xscale = -dir;

// Firing

if instance_exists(obj_player)
{
	if distance_to_object(obj_player) < 1000
	{
		if !collision_line(x,y, obj_player.x, obj_player.y, obj_inviswall,1,1)
		{
if (alarm[0]) == -1 {
	audio_play_sound(snd_bombdrop,1,false);
var bullet = instance_create_layer(x,y, "Instances", obj_bomb);
with (bullet)
{
	image_angle = obj_wasp.image_angle;
	direction = (obj_wasp.image_angle - 90);
	speed = 10;
}
	alarm[0] = 15;

		}
	}
}
}

if (hp<=0)
{
	instance_create_layer(x,y,"Instances", choose(obj_archer_pow, obj_knight_pow, obj_healthpack));
	instance_destroy();
}