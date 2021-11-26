
if (global.pause = true){
	speed = 0;
}

if (!global.pause) {; 

// Going after player
if(distance_to_object(Obj_Player) < 10000) {
	move_towards_point(Obj_Player.x, Obj_Player.y, 1);
}
else if(distance_to_object(Obj_Player) > 500) {
	x = x
	y = y
	speed = 0;
}


if (place_meeting(x,y,Obj_Wall))
{
	with(Obj_Wall) {
	health = health - 0.5;
	}
instance_destroy();
	//speed = 0;
	
//	with(Obj_Wall) {
//	health = health - 0.5;
	
//	}
	
}
}




