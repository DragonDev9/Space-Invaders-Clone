/// @description Insert description here
// You can write your code in this editor

#region state
state = noone;


state = "moving";
#endregion

#region vars

	//moving vars
	hsp = 0;
	max_hsp = 1;
	//end moving vars
	
	//shoot vars
	max_shoot_cd = global.fps/2;
	shoot_cd=0;
	//end shoot vars
	
	//life
	life = 3;
	


#endregion


control_state = function(){


	switch(state){
	
		case "moving":{
		
			//keys for moviment and shooting
			var _left,_right,_shoot;
			
			//movin
			_left = keyboard_check(vk_left);
			_right = keyboard_check(vk_right);
			
			
			hsp = (_right-_left)*max_hsp;
			//end moving
			
			//////////////////////////////////////////////////////////////////////////////////////////////////
			
			//shooting
			
			_shoot = keyboard_check(vk_space);
			
			if shoot_cd <= 0{
				if _shoot {
					var _bullet = instance_create_layer(x,y-sprite_height/2,layer,obj_shoot);
					audio_play_sound(snd_shoot,true,false); 
					shoot_cd = max_shoot_cd;
				}
				
				
			}else{
				shoot_cd--;
			}
			
			//end shooting
			
			/////////////////////////////////////////////////////////////////////////////////////////////////
			
		
		break;
		}//finish case moving
	
	}//finish switch state


}//finish control state






