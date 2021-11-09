/// @description Insert description here
// You can write your code in this editor

instance_destroy()

with(other){
	instance_destroy();
	
	if(sprite_index == Spr_Enemy){
		instance_create_layer(x,y,"Instances", Obj_Enemy);
	}
}