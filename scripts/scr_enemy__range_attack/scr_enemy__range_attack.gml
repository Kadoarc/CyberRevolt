state_text = "attack";
var dis = point_direction(x,y, obj_player.x, obj_player.y);

if (dis > attack_range){
	state = scr_enemy_chase();
} else {
if (alarm[0]) == -1 {
var bullet = instance_create_layer(x,y, "Instances", obj_enemybullet);
with (bullet)
{
	direction = point_direction(x,y, obj_player.x, obj_player.y);
	speed = 4;
}
	alarm[0] = 30;
}
}