instance_create_layer((x+64), y, "Walls", Obj_Wall);


 global.wood= global.wood - 3;
 
 if (global.wood <= 0){
	exit;
}