if (global.checkpointR == room)
{
	instance_destroy(obj_player);
	instance_create_layer(global.checkpointx, global.checkpointy, "Instances", obj_player);
	obj_player.x = global.checkpointx;
	obj_player.y = global.checkpointy;
	obj_viewport.x = global.checkpointx;
	obj_viewport.y = obj_player.y - 250;
	audio_play_sound(snd_spawn,1,false);
	
}
else
{
	obj_player.x = obj_player.startx;
	obj_player.y = obj_player.starty;
	obj_viewport.x = obj_viewport.startx;
	obj_viewport.y = obj_viewport.starty;
	
}
