// Draw Menu
draw_set_halign(fa_left);
draw_set_valign(fa_middle);
draw_set_font(fnt_mainmenu);
draw_set_color(c_white);

var m;
for (m = 0; m < array_length_1d(menu); m +=1)
{
	draw_text (x + 1.5*space, y + (m*space), string(menu[m]))
}

draw_sprite(spr_menu, 0, x+16, y+mpos*space);
