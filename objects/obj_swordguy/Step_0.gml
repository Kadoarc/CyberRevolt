// Movement
xsp = dir*movespeed;
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
if (place_meeting(x+xsp,y,obj_patrolzone))
	{
		while(!place_meeting(x+sign(xsp),y,obj_patrolzone))
			{
				x += sign(xsp);
			}
			dir *=-1;
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
}
y += ysp;

if (place_meeting(x,y+ysp,obj_patrolzone))
{
while(!place_meeting(x,y+sign(ysp),obj_patrolzone))
{
y += sign(ysp);
}
ysp = 0;
}
y += ysp;


image_xscale = dir;

//////////////////////////////////////////////////////////////////////////////////////////////////////////////

// Attack

if instance_exists(obj_player)
{

	if distance_to_object(obj_player) < 100
	{
		if !collision_line(x,y, obj_player.x, obj_player.y, obj_wall,1,1)
		{
			if (alarm[0]) == -1 
			{
				if (obj_player.x > x)
				{
					dir = 1;
				}
				else if (obj_player.x < x)
				{
					dir = -1;
				}
				movespeed = 0;
				sprite_index = spr_meleenemyswing;
				audio_play_sound(snd_enemyswing,1,false);
				var bullet = instance_create_layer(x + (dir*55),y, "Instances", obj_enemyswing);
				alarm[0] = 5;
			}
		}
	}
	else
	{
		sprite_index = spr_meleeenemy;
		movespeed = maxspeed;
	}
}

// Loot Drop

if (hp<=0)
{
	var lootdrop = random(5);
	if (lootdrop <= 1)
	{
		instance_create_layer(x,y,"Instances", obj_knight_pow);
	}
	instance_destroy();
}