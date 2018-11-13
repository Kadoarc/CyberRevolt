event_inherited();
xsp = 0;
if instance_exists(obj_player)
{
	if distance_to_object(obj_player) < 500
	{
		if !collision_line(x,y, obj_player.x, obj_player.y, obj_wall,1,1)
		{
			if (alarm[0]) == -1 
			{
				sprite_index = spr_dualiesfiring;
				audio_play_sound(snd_guns,1,false);
				var bullet = instance_create_layer((x - (mirror*51)),y, "Instances", obj_dualiesbullet);
				with (bullet)
				{
					direction = point_direction(x, y, obj_player.x, y);
					speed = 8;
				}
				alarm[0] = 15;
			}
		}
		if distance_to_object(obj_player) > 392
		{
			sprite_index = spr_dualies;
		}
	}

}

// Loot Drop

if (hp<=0)
{
	var lootdrop = random(5);
	if (lootdrop <= 1)
	{
		instance_create_layer(x,y,"Instances", obj_archer_pow);
	}
	instance_destroy();
}