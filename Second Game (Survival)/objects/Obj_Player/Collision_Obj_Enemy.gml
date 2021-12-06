/// @description Insert description here
// You can write your code in this editor
lives -= 1

with(Obj_Game){
	alarm[1] = room_speed;
}


instance_destroy();
audio_play_sound(Playerdeath, 1, false);