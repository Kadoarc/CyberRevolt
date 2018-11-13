/// @description Player Health
// You can write your code in this editor
draw_set_halign(fa_left);
draw_set_valign(fa_middle);
draw_set_color(c_aqua);
draw_set_font(t);
draw_text(50,550,"Score:  " + string(global.points));
draw_text (200,550,"Lives: " +string(global.life));



