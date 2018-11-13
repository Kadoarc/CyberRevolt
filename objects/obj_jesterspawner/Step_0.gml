/// @description Insert description here
// You can write your code in this editor

if (ROF =-1)
{
	if (!instance_exists(obj_jesterbulletshowcase))
	{
		ROF = 10
		bullet = instance_create_layer((x+88),(y-14), "Instances", obj_jesterbullet);
		bullet.speed = 10;
		bullet.image_angle = obj_jesterspawner.image_angle + (random(5) - random(10));
		bullet.direction = bullet.image_angle;
		
		bullet1 = instance_create_layer((x+88),(y-14), "Instances", obj_jesterbullet);
		bullet1.speed = 10;
		bullet1.image_angle = obj_jesterspawner.image_angle + (random(5) - random(10));
		bullet1.direction = bullet1.image_angle;
		
		bullet2 = instance_create_layer((x+88),(y-14), "Instances", obj_jesterbullet);
		bullet2.speed = 10;
		bullet2.image_angle = obj_jesterspawner.image_angle + (random(5) - random(10));
		bullet2.direction = bullet2.image_angle;
		
		bullet3 = instance_create_layer((x+88),(y-14), "Instances", obj_jesterbullet);
		bullet3.speed = 10;
		bullet3.image_angle = obj_jesterspawner.image_angle + (random(5) - random(10));
		bullet3.direction = bullet3.image_angle;
		
		bullet4 = instance_create_layer((x+88),(y-14), "Instances", obj_jesterbullet);
		bullet4.speed = 10;
		bullet4.image_angle = obj_jesterspawner.image_angle + (random(5) - random(10));
		bullet4.direction = bullet4.image_angle;
		
		bullet5 = instance_create_layer((x+88),(y-14), "Instances", obj_jesterbullet);
		bullet5.speed = 10;
		bullet5.image_angle = obj_jesterspawner.image_angle + (random(5) - random(10));
		bullet5.direction = bullet5.image_angle;
	}
}
else
{
	ROF = 1
}