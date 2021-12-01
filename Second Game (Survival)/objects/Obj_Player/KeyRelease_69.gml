instance_destroy(obj_wallOutline);

if (global.wood > 0) {
	instance_create_layer(mouse_x, mouse_y, "Walls", Obj_Wall);
}

global.wood -= 3;