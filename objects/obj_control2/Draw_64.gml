/// @description Insert description here
// You can write your code in this editor

var _color = choose(c_white,c_red,c_green,c_blue);

draw_set_font(fnt_font);
draw_set_halign(1);
draw_set_valign(1);
draw_text_ext_color(350,300,"Space Shooter",20,300,_color,_color,_color,_color,1);
draw_text_ext(350,700,"Press SPACE to start",20,300);
draw_set_halign(-1);
draw_set_valign(-1);
draw_set_font(-1);





