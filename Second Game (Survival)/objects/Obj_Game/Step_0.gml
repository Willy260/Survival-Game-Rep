/// @description Insert description here
// You can write your code in this editor
if (!global.pause) {
timer --;

if(keyboard_check_pressed(vk_enter)){
	switch(room){
		case Rm_start:
		room_goto(rm_characters);
		break;
		
		case rm_characters:
		room_goto(Rm_game);
		break;
		
		case Rm_win:
		case Rm_game_over:
		game_restart();
		break;
}
}


if(room == rm_characters){
	if(keyboard_check(ord("2"))){
		object_set_sprite(Obj_Player, Spr_PlayerG);
	}
	if(keyboard_check(ord("1"))){
		object_set_sprite(Obj_Player, spr_playerY);
	}
	if(keyboard_check(ord("3"))){
		object_set_sprite(Obj_Player, Spr_Player);
	}	
} 
	

if(room == Rm_game){
	if(global.score >= 1000){
		room_goto(Rm_win);
		//audio_play_sound(snd_win, 1, false); 
	}

	if(lives <= 0){
		room_goto(Rm_game_over);
		//audio_play_sound(snd_lose, 1, false);
		
	}
	
	if(global.score < 0) {
		global.score = 0;
	}
	
	if(global.wood < 0) {
		global.wood = 0;
	}
} 

if(keyboard_check_pressed(vk_shift)){
	switch(room){
		case Rm_start:
		room_goto(Rm_Strategy);
		break;
	}
}
	
	if(keyboard_check_pressed(vk_enter)){
	switch(room){
		case Rm_Strategy:
		room_goto(Rm_start);
		break;
	}
	}	
	


//Spawn wave 1
if (timer <= 0) && (global.wave == 0.5) {
	timer = time;
	global.wave = 1;
	if(room == Rm_game){
	//if(audio_is_playing(msc_song)){
		//audio_stop_sound(msc_song);
	
	//audio_play_sound(msc_song, 2, true);
	//if (timer <= 0){ 
	//	exit;
	//}
	if (!global.pause){
repeat(6){	
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
	}

alarm[0] = 100;
}
	
	
}

//win from timer
//if(room == Rm_game){
//	if(timer = ){
//		room_goto(Rm_win);
		//audio_play_sound(snd_win, 1, false); 
	//}
	
	
//Spawn wave 2
	if (timer <= 0) && (global.wave >= 1) {
	timer = time;
	++ global.wave;
	if(room == Rm_game){
	//if(audio_is_playing(msc_song)){
		//audio_stop_sound(msc_song);
	
	//audio_play_sound(msc_song, 2, true);
	if (timer <= 0){ 
		exit;
	}
		repeat(5){	
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

//if (place_meeting(x,y,Obj_Enemy))
//{
	//with(Obj_Player) {
	//timer = time;
	//}

alarm[0] = 100;
}
}
}
//}