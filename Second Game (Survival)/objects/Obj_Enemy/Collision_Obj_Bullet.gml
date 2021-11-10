/// @description Insert description here
// You can write your code in this editor
if(speed > 0) {
	instance_destroy()
	
	instance_create_layer(x, y, "Materials", obj_wood);
}

//with(other){
	//instance_destroy();
	
	//if(sprite_index == Spr_Enemy){
	//	repeat(2){
	//	var new_enemy = instance_create_layer(x,y,"Instances", Obj_Enemy);
	//	new_enemy.sprite_index = Spr_Enemy;
	//	}
//	}
// }