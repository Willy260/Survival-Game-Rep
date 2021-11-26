/// @description Insert description here
// You can write your code in this editor


alarm[3] = room_speed*5;

repeat(20){	
	var xx = choose(
	irandom_range(200, room_width*0.3), 
	irandom_range(room_width*0.7, room_width)
	);
	var yy = choose(
	irandom_range(200, room_height*0.3), 
	irandom_range(room_height*0.7, room_height)
	);
	instance_create_layer(xx, yy, "Instances", Obj_Enemy);
	instance_create_layer(xx, yy, "Instances", Obj_bigEnemy);
}