/// @description Main Code

var k_left = keyboard_check(vk_left) || keyboard_check(ord("A"));
var k_right = keyboard_check(vk_right) || keyboard_check(ord("D"));
var basicmelee = keyboard_check_pressed(ord("J"))
// var k_ability = keyboard_check(ord("L"));
var movedir = (k_right - k_left);

if keyboard_check_pressed(vk_f11)
{
	if (fullscreen = false)
	{
		fullscreen = true;
	}
	else 
	{
		fullscreen = false;
	}
}

if (fullscreen = true)
{
	window_set_fullscreen(true)
}
else
{
	window_set_fullscreen(false)
}

// Direction and Gravity Calculations
if (x < obj_player.x)
{

	move = 1;
}
else
{
	move = 0;
}
if (x < obj_player.x)
{
	if (distance_to_object(obj_player) > 250)
	{
		xsp = 25;
	}
	else
	{
		xsp = move * obj_player.playermaxspd;
	}
	x += xsp;
}
y = obj_player.y - 250
x=clamp(x, 32, (room_width-32));
y=clamp(y, 0, room_height);


if (obj_player.max_hp && obj_player.hp <= 0)
{
scr_playerdeath();
global.life -=1;
}
else if (global.life <= 0)
{
instance_destroy();
game_restart();
}

//////////////////////////////////////////////////////////////////////////////////////////////////////////

// Camera

camera=camera_get_view_x(view_camera[0])
layer_x("Sky",camera*-0.05)
layer_x("Stars",camera*-0.01)

// Level 1

layer_x("Building_Front",camera*-0.3)
layer_x("Building_Back",camera*-0.2)
layer_x("Mountain_Front",camera*-0.1)
layer_x("Mountain_Back",camera*-0.05)

// Level 2

layer_x("SILblack_Buildings",camera*-0.3)
layer_x("SILpurple_Buildings",camera*-0.1)