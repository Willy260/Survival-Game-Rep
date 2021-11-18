/// @description Insert description here
// You can write your code in this editor
if (!global.pause) {
timer --;

if(keyboard_check_pressed(vk_enter)){
	switch(room){
		case Rm_start:
		room_goto(Rm_game);
		break;
		
		case Rm_win:
		case Rm_game_over:
		game_restart();
		break;
}
}

if(room == Rm_game){
	if(score >= 1000){
		room_goto(Rm_win);
		//audio_play_sound(snd_win, 1, false); 
	}

	if(lives <= 0){
		room_goto(Rm_game_over);
		//audio_play_sound(snd_lose, 1, false);
		
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
if (timer <= 19000) {
	timer = time;
	if(room == Rm_game){
	//if(audio_is_playing(msc_song)){
		//audio_stop_sound(msc_song);
	
	//audio_play_sound(msc_song, 2, true);
	if (timer <= 8900){ 
		exit;
	}
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

alarm[0] = 100;
}
	
	
}

//win from timer
if(room == Rm_game){
	if(timer = 9000){
		room_goto(Rm_win);
		//audio_play_sound(snd_win, 1, false); 
	}
	
	
//Spawn wave 2
	if (timer <= 10000) {
	timer = time;
	if(room == Rm_game){
	//if(audio_is_playing(msc_song)){
		//audio_stop_sound(msc_song);
	
	//audio_play_sound(msc_song, 2, true);
	if (timer <= 8900){ 
		exit;
	}
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

alarm[0] = 100;
}
}
}
}