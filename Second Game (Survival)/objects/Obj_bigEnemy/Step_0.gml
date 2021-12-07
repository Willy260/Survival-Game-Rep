
if (global.pause = true){
	speed = 0;
}

if (!global.pause) { 
	
if(global.wave > 3) {
	walksp = 0.75;
}

if(global.wave > 6) {
	walksp = 1;
}

if(global.wave > 9) {
	walksp = 1.2;
}

if(distance_to_object(Obj_Player) < 10000) {
	move_towards_point(Obj_Player.x, Obj_Player.y, walksp);
}
else if(distance_to_object(Obj_Player) > 500) {
	x = x
	y = y
	speed = 0;
}


}




