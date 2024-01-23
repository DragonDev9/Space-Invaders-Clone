/// @description Insert description here
// You can write your code in this editor

//fps
global.fps = game_get_speed(gamespeed_fps);

//points
global.points = 0;

//how many aliens
aliens = 0;
global.destroyed = 0;

//creating the alliens

alien_x = 25;
alien_y = 28;


for (var i=0; i<6;i++){
	
	instance_create_layer(alien_x,alien_y,"enemies",obj_alien);

	for(var j=0;j<8;j++){
		
		alien_x += sprite_get_width(spr_alien)*2;
	
		instance_create_layer(alien_x,alien_y,"enemies",obj_alien);
		aliens++;
		
		
	
	}//finish second for
	
	alien_y+=sprite_get_height(spr_alien)*2;
	alien_x=25;
	aliens++;

}//finish first for

obj_alien.img_index=0;
