/// @description Insert description here
// You can write your code in this editor

lives -= 1

with(Obj_Game){
	alarm[1] = room_speed;
}
//audio_play_sound(snd_die, 1, false);

instance_destroy();
