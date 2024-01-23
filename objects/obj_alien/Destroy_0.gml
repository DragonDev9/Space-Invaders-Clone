/// @description Insert description here
// You can write your code in this editor





instance_create_layer(x,y,layer,obj_explosion);
audio_play_sound(snd_explosion,false,false);
obj_control.aliens--;
global.destroyed++;


