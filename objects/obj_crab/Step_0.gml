/// @description Insert description here

// Inherit the parent event

event_inherited();

xsp = 0;

if instance_exists(obj_player)
{	
	if distance_to_object(obj_player) < 400
	{
		if !collision_line(x,y, obj_player.x, obj_player.y, obj_wall,1,1)
		{
			if (alarm[0]) == -1 
			{
				if (instance_number(obj_missile) < 3)
				{
					audio_play_sound(snd_rocketfire,1,false);
					sprite_index = spr_crabfire;
					var bullet = instance_create_layer((x - (obj_crab.mirror*7)),(y - 135), "Instances", obj_missile);
					with (bullet)
					{
						direction = point_direction(obj_crab.mirror*x, y, (obj_crab.mirror*(obj_crab.x - 300)), (obj_crab.y - 300));
						speed = 5;
						if (obj_crab.mirror = 1)
						{
							image_angle = obj_crab.image_angle + 135;
						}
						else
						{
							image_angle = obj_crab.image_angle + 45;
						}
					}
					alarm[0] = 35;
				}
				else
				{
					sprite_index = spr_crab;
				}
			}
		}
	}
}

// Loot Drop

if (hp<=0)
{
	score_number = instance_create_layer(x, y, "Instances", obj_score);
with (score_number) {
    points = 10; // or however many points you want the enemy to be worth
	global.points += 10;
}


	instance_create_layer(x,y,"Instances", choose(obj_archer_pow, obj_knight_pow, obj_healthpack));
	instance_destroy();
}