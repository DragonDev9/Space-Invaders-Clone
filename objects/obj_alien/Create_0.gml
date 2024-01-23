/// @description Insert description here
// You can write your code in this editor

//vars
state = "moving";

hsp = 0;

img_spd = 0.05;

img_index=0;

img_nb = sprite_get_number(spr_alien);

spd = 5;

points = 35;

//end vars


alarm[0] = irandom_range(global.fps*7,global.fps*15);

control_state = function(){

	switch(state){
	
		case "moving":{
			
		if img_index >= img_nb{//when the img index (when var whichs responsable for the sprite frame) outnumbered the current frames
			hsp+=spd;
			img_index=0;
		}else{
			hsp=0;
			img_index+=img_spd;
		}
		
		/////////////
		
		if x > room_width && img_index >= img_nb || x < 0 && img_index >= img_nb{
			
			
			obj_alien.state="gettingdown";
			
				
	}

		break;
		}//end case moving
		
		/////////////////////////////////////////////////////////////////////////////
	
		case "gettingdown":{
			
			if img_index >= img_nb {
				hsp=0;
				spd*=-1;
				y+=3;
				hsp=spd;

				img_index=0;
				state = "moving";
			}else{
				img_index+=img_spd;
			}
		
		break;
		}//end case gettingdown
		
		////////////////////////////////////////////////////////////////////////////////
		
		
		///////////////////////////////////////////////////////////////////////////////////
	
	}//end switch state

}//end control state 






