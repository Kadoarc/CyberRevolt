/// @description Insert description here
// You can write your code in this editor
draw_self();

if !instance_exists(obj_player) exit;

draw_health = lerp(draw_health, obj_player.hp, .5);
draw_set_color(c_red);
draw_rectangle(x+4, y+4, x+123*draw_health/obj_player.max_hp, y+11, false);
draw_set_color(c_white);
