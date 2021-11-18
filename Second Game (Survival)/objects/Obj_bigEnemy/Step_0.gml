
if (!global.pause) { 

// Going after player
move_towards_point(Obj_Player.x, Obj_Player.y, 1);


if (place_meeting(x,y,Obj_Wall))
{
	with(Obj_Wall) {
	health = 0;
	}
instance_destroy();
	//speed = 0;
	
//	with(Obj_Wall) {
//	health = health - 0.5;
	
//	}
	
}
}




