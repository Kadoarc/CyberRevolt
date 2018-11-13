/// @description Insert description here
// You can write your code in this editor

obj_player.hp += 33;
if obj_player.hp > obj_player.max_hp
{
obj_player.hp = obj_player.max_hp;	
}
audio_play_sound(snd_heal,1,false);
instance_destroy();
