// Movement
ysp = dir*movespeed;

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

// Collision
if (place_meeting(x,y+ysp,obj_wall))
{
while(!place_meeting(x,y+sign(ysp),obj_wall))
{
y += sign(ysp);
}
dir*=-1
}
y += ysp;

if (place_meeting(x,y+ysp,obj_inviswall))
{
while(!place_meeting(x,y+sign(ysp),obj_inviswall))
{
y += sign(ysp);
}
dir*=-1
}
y += ysp;

// Firing

if instance_exists(obj_player)
{
	if distance_to_object(obj_player) < 500
	{
		if !collision_line(x,y, obj_player.x, obj_player.y, obj_inviswall,1,1)
		{
			if (alarm[0]) == -1 
			{
				sprite_index = spr_vertihoverfire;
				audio_play_sound(snd_guns,1,false);
				var bullet = instance_create_layer(x + (-mirror*50),(y+58), "Instances", obj_hoverbullet);
				with (bullet)
				{
					direction = point_direction(x,y, (obj_player.x+random(100)-random(200)), (obj_player.y+random(100)-random(200)));
					speed = 10;
				}
				alarm[0] = 15;
		}
		if distance_to_object(obj_player) > 392
		{
			sprite_index = spr_vertihover;
		}
	}
}
}


//Loot Drop
if (hp<=0)
{
	instance_create_layer(x,y,"Instances", choose(obj_knight_pow, obj_archer_pow, obj_healthpack));
	instance_destroy();
}
