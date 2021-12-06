/// @description Insert description here
// You can write your code in this editor
if(speed > 0) {
	instance_destroy()
	
	repeat(2) {
		instance_create_layer(x, y, "Instances", Obj_Enemy);
	}
}

with(other) {
	instance_destroy();
}