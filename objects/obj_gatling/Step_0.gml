event_inherited();
xsp = 0;

// Firing

if instance_exists(obj_player)
{
	if distance_to_object(obj_player) < 400
	{
		
		if !collision_line(x,y, obj_player.x, obj_player.y, obj_wall,1,1)
		{
			if (alarm[0]) == -1 
			{
				sprite_index = spr_gatfire;
				audio_play_sound(snd_gatling,1,false);
				var bullet = instance_create_layer(x - (mirror*42),y, "Instances", obj_gatlingbullet);
				with (bullet)
				{
					direction = point_direction(x,y, obj_player.x, (y+(random(50)-random(100))));
					speed = 8;
				}
				alarm[0] = 10;
			}
		}
		if distance_to_object(obj_player) > 392
		{
			sprite_index = spr_gatling;
		}
	}
}

// Loot Drop

if (hp<=0)
{
	instance_create_layer(x,y,"Instances", obj_archer_pow);
	instance_destroy();
}