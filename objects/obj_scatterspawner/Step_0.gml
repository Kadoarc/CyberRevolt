if (ROF = -1)
{
	if (!instance_exists(obj_playerscattershowcase))
	{
		ROF = 60
		bullet = instance_create_layer((x+88),(y-14), "Instances", obj_playerscattershowcase);
		bullet.speed = 30;
		bullet.direction = bullet.image_angle;
		bullet1 = instance_create_layer((x+88),(y-14), "Instances", obj_playerscattershowcase);
		bullet1.speed = 30;
		bullet1.image_angle = obj_scatterspawner.image_angle - 8;
		bullet1.direction = bullet1.image_angle;
		bullet2 = instance_create_layer((x+88),(y-14), "Instances", obj_playerscattershowcase);
		bullet2.speed = 30;
		bullet2.image_angle = obj_scatterspawner.image_angle + 8;
		bullet2.direction = bullet2.image_angle;
	}
}
else
{
	ROF = -1
}