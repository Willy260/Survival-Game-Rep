
//global.pause = false;
		if(room == Rm_start)
		{
			if(current_track != Mainmenu)
			{
				audio_stop_sound(current_track);
				is_music_playing = false;
				current_track = Mainmenu;
			}
			
			if(!is_music_playing)
			{
				is_music_playing = true;
				audio_play_sound(current_track, 0, true);
			}
		}
		else if(room == Rm_game)
		{
			if(current_track != Gameaudio)
			{
				audio_stop_sound(current_track);
				is_music_playing = false;
				current_track = Gameaudio;
			}
			
			if(!is_music_playing)
			{
				is_music_playing = true;
				audio_play_sound(current_track, 0, true);
			}
		}
				
	
//repeat(20){	
	//var xx = choose(
	//irandom_range(200, room_width*0.3), 
	//irandom_range(room_width*0.7, room_width)
	//);
	//var yy = choose(
	//irandom_range(200, room_height*0.3), 
	//irandom_range(room_height*0.7, room_height)
	//);
	//instance_create_layer(xx, yy, "Instances", Obj_Enemy);
//}

//alarm[0] = 100;

//	{
//}
