
if (global.pause = true){
	speed = 0;
}

if (!global.pause) {; 

if(global.wave > 3) {
	walksp = 1.5;
}

if(global.wave > 6) {
	walksp = 1.9;
}

if(global.wave > 9) {
	walksp = 2.3;
}

// Going after player
if(distance_to_object(Obj_Player) < 10000) {
	move_towards_point(Obj_Player.x, Obj_Player.y, walksp);
}
else if(distance_to_object(Obj_Player) > 500) {
	x = x
	y = y
	walksp = 0;
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




