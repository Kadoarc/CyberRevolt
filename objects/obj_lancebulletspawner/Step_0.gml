/// @description Insert description here
// You can write your code in this editor
if (ROF = -1)
{
	if (!instance_exists(obj_lanceshowcase))
	{
	ROF = 55;
		bullet = instance_create_layer(x,y, "Instances", obj_lancerbullet);
		bullet.speed = 60;
		bullet.image_angle = obj_lancebulletspawner.image_angle;
		bullet.direction = bullet.image_angle;
		xsp = 0;
}
else
{
	ROF = -1
}
}