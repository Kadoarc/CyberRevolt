/// @description Insert description here
// You can write your code in this editor
/// @description Insert description here
// You can write your code in this editor
image_index =+1;

if (place_meeting(x,y, obj_player))
{
sprite_index = spr_checkpoint;
global.checkpoint = id;
global.checkpointx = x;
global.checkpointy = y;
global.checkpointR = room;

}

if (global.checkpointR == room)
{
	if (global.checkpoint == id) image_index = 1; else image_index = 0
	
}
