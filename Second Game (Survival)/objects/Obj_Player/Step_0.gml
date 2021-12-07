/// @description Insert description here
// You can write your code in this editor

if (!global.pause) {
//get player movement
key_left = keyboard_check(vk_left) || keyboard_check(ord("A"));
key_right = keyboard_check(vk_right) || keyboard_check(ord("D"));
key_up = keyboard_check(vk_up) || keyboard_check(ord("W"));
key_down = keyboard_check(vk_down) || keyboard_check(ord("S"));
//key_jump = keyboard_check_pressed(vk_space) || keyboard_check(ord("W"));
//calculate movement
//need movement up and down???

//other key assignments


var sidemove = (key_right - key_left); 
var vertmove = (key_down - key_up);

hsp = sidemove * walksp;
//vsp = move * walksp;
vsp = vertmove * walksp;

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

/*//wall building
if (key_build) && (global.wood >= 1) {
	 instance_create_layer((x + 64), y , "Walls", Obj_Wall);
	 
	 global.wood= global.wood - 3;
}
*/


//horizontal collision outside wall
if (place_meeting(x+hsp,y,Obj_Outsidewall))
{
	while (!place_meeting(x+sign(hsp),y,Obj_Outsidewall))
		{
		x = x + sign (hsp);	
		}
	hsp = 0;
}

x = x + hsp;


//vertical collision outside wall
if (place_meeting(x,y+vsp,Obj_Outsidewall))
{
	while (!place_meeting(x,y+sign(vsp),Obj_Outsidewall))
		{
		y = y + sign (vsp);	
		}
	vsp = 0;
}

y = y + vsp;
	

}