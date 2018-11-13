event_inherited()
xsp = 0;

// Firing

if instance_exists(obj_player)
{
	if distance_to_object(obj_player) < 200
	{
		if !collision_line(x,y, obj_player.x, obj_player.y, obj_wall,1,1)
		{
if (alarm[0]) == -1 {
	repeat (8)
	{

		var bullet = instance_create_layer(x,y, "Instances", obj_enemybullet);
			with (bullet)
				{
					direction = point_direction(x,y, (obj_player.x+random(100)-random(200)), (obj_player.y+random(100)-random(200)));
					speed = 4;
				}
			alarm[0] = 60;

	}
	}
	}
}
}
