/// @description Insert description here
// You can write your code in this editor

//get player movement
key_left = keyboard_check(vk_left) || keyboard_check(ord("A"));
key_right = keyboard_check(vk_right) || keyboard_check(ord("D"));
key_up = keyboard_check(vk_up) || keyboard_check(ord("W"));
key_down = keyboard_check(vk_down) || keyboard_check(ord("S"));
//key_jump = keyboard_check_pressed(vk_space) || keyboard_check(ord("W"));
//calculate movement
//need movement up and down???

var move = (key_right - key_left - key_up - key_down); 


hsp = move * walksp;
//vsp = move * walksp;
//vsp = vsp + grv;

//if (place_meeting(x,y+1,Obj_wall)) && (key_jump)
//{
//vsp = -7;	
	
//}

//horizontal collision
if (place_meeting(x+hsp,y,Obj_Wall))
{
	while (!place_meeting(x+sign(hsp),y,Obj_Wall))
		{
		x = x + sign (hsp);	
		}
	hsp = 0;
}

x = x + hsp;


//vertical collision
if (place_meeting(x,y+vsp,Obj_Wall))
{
	while (!place_meeting(x,y+sign(vsp),Obj_Wall))
		{
		y = y + sign (vsp);	
		}
	vsp = 0;
}

y = y + vsp;