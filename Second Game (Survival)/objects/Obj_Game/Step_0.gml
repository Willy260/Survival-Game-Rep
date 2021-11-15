/// @description Insert description here
// You can write your code in this editor

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
	
	
	
	
	
