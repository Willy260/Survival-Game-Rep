/// @description Insert description here
// You can write your code in this editor
switch(room){
case Rm_game:
draw_text(100, 70, "SCORE: "+string(score));
draw_text(100, 100, "LIVES: "+string(lives));
draw_text(100, 130, "WOOD: "+string(global.wood));
break;

case Rm_start:
draw_set_halign(fa_center);
var c = c_teal;
draw_text_transformed_color(
room_width/2, 500, "DESERT DEFENSE", 3, 3, 0, c,c,c,c, 1
);
draw_text(
room_width/2, 600,
@"DEFEND YOURSELF 
& 
SCORE 1000 POINTS TO SURVIVE!!

MOVE USING THE ARROW KEYS
PRESS E TO PLACE WALLS
PICK UP WOOD TO BE ABLE TO PLACE MORE WALLS
CLICK THE MOUSE TO SHOOT
>> PRESS ENTER TO START<<
"

);
draw_set_halign(fa_left);
break;

case Rm_win:
draw_set_halign(fa_center);
var c = c_lime;
draw_text_transformed_color(
room_width/2, 400, "YOU SURVIVED!", 3, 3, 0, c,c,c,c, 1
);
draw_text(
room_width/2, 500,
@"PRESS ENTER TO RESTART


Credits:
Will Ledbetter
Tathagat Prayaga
Garrett Geisler
Jackson Ashby
"
);
draw_set_halign(fa_left);
break;

case Rm_game_over:
draw_set_halign(fa_center);
var c = c_red;
draw_text_transformed_color(
room_width/2, 700, "YOU FAILED!", 3, 3, 0, c,c,c,c, 1
);
draw_text(
room_width/2, 850,
"FINAL SCORE: "+string(score)

);

draw_text(
room_width/2, 950,
"PRESS ENTER TO RESTART"
);
draw_set_halign(fa_left);
break;

}