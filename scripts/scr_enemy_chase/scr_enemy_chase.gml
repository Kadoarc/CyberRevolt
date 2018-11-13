//scr_enemy_chase()
state_text = "Chase";
var dis = point_distance(x,y,obj_player.x, obj_player.y);
var dir = point_direction(x,y,obj_player.x, obj_player.y);

if (dis <= sight_range && dis > attack_range){
	motion_set(dir, spd);
} else if (dis <= attack_range){
speed = 0;
if (obj_enemy)
{
state = scr_enemy__range_attack;
}
else if (obj_meleeenemy)
{
state = scr_enemy__melee_attack;
}
} else {
	speed = 0;
	state = scr_enemy_idle;
}