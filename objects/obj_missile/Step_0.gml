speed = min(speed + 0.5, 10);

if (homing)
{
	var pointdir = point_direction(x,y, obj_player.x, obj_player.y)
	image_angle += sin(degtorad(pointdir - image_angle)) * rspeed;
	direction = image_angle;
}

if (hp < 0)
{
	instance_destroy();
}