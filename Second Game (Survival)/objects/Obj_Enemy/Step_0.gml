// Going after player
if(distance_to_object(Obj_Player) < 500) {
	move_towards_point(Obj_Player.x, Obj_Player.y, 1);
}
else if(distance_to_object(Obj_Player) > 500) {
	x = x
	y = y
	speed = 0;
}


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