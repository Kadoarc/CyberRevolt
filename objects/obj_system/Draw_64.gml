/// @description Player Health
// You can write your code in this editor
draw_set_halign(fa_left);
draw_set_valign(fa_middle);
draw_set_color(c_red);
draw_set_font(fnt_mainmenu);
draw_text(64,32,"Score:  " + string(global.points));
draw_text (64,64,"Lives: " +string(global.life));
