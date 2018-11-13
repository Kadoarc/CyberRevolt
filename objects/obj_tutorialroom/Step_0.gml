// Menu Controls
var move = 0;
move -= max(keyboard_check_pressed(vk_up), keyboard_check_pressed(ord("W")), 0);
move += max(keyboard_check_pressed(vk_down), keyboard_check_pressed(ord("S")), 0);

if (move != 0)
{
	mpos += move;
	if (mpos < 0)
	{
		mpos = array_length_1d(menu) -1;
	}
		if (mpos >= array_length_1d(menu))
	{
		mpos = 0;
	}
}

var push;
push = max(keyboard_check_pressed(vk_enter), keyboard_check_pressed(vk_rshift), keyboard_check_pressed(vk_space), 0);
if (push == 1) scr_menu1();


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