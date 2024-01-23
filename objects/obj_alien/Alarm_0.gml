/// @description Insert description here
// You can write your code in this editor


var _bullet = instance_create_layer(x,y,layer,obj_enemy_shoot);


_bullet.vspeed=2;


alarm[0] = irandom_range(global.fps*9,global.fps*18);


