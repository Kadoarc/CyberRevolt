if (ROF =-1)
{
	if (!instance_exists(obj_playerarrowshowcase))
	{
		ROF = 60
		bullet = instance_create_layer((x+88),(y-14), "Instances", obj_playerarrowshowcase);
		bullet.speed = 30;
		bullet.direction = bullet.image_angle;
	}
}
else
{
	ROF = -1
}