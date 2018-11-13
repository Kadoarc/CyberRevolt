/// @description Insert description here
// You can write your code in this editor
if (pause=1)
{
	draw_set_color(c_black);
	draw_set_alpha(0.5);
	draw_rectangle(0,0, room_width, room_height,0);
	draw_set_halign(fa_center);
	draw_set_font(fnt_mainmenu);
	draw_set_color(c_white)
	draw_set_alpha(1);
	draw_text(500,300,"Game Paused");
	draw_set_color(c_black);
	
}