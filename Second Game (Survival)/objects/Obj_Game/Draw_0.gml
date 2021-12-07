/// @description Insert description here
// You can write your code in this editor
switch(room){
case Rm_game:
var c = c_gray
draw_text(100, 70, "SCORE: "+string(global.score));
draw_text(100, 100, "LIVES: "+string(lives));
draw_text(100, 130, "IRON: "+string(global.wood));
draw_text(100, 160, "TIME TO WAVE: "+string(timer));
if (global.wave >= 0 && global.wave<= 1){
draw_text(100, 200, "LVL: BEGINNER");
draw_sprite(Spr_beginner, 0, 380, 200);
}
if (global.wave >= 1 && global.wave <= 2){
draw_text(100, 200, "LVL: NOVICE");
draw_sprite(Spr_Novice, 0, 380, 200);
}
if (global.wave >= 3 && global.wave <= 4){
draw_text(100, 200, "LVL: WEEKEND PLAYER");
draw_sprite(Spr_WeekendPlayer, 0, 525, 200);
}
if (global.wave >= 4 && global.wave <= 5){
draw_text(100, 200, "LVL: INTERMEDIATE");
draw_sprite(Spr_Intermediate, 0, 500, 200);
}
if (global.wave >= 6 && global.wave <= 7){
draw_text(100, 200, "LVL: EXPERT");
draw_sprite(Spr_Expert, 0, 380, 200);
}
if (global.wave >= 9){
draw_text(100, 200, "LVL: SURVIVOR");
draw_sprite(Spr_Survivor, 0, 380, 200);
}
break;

case rm_characters:
	draw_sprite(spr_playerY, 0, room_width*0.25, room_height*0.5);
	draw_sprite(Spr_PlayerG, 0, room_width*0.5, room_height*0.5);
	draw_sprite(Spr_Player, 0, room_width*0.75, room_height*0.5);
	draw_text_transformed(100,room_height*0.75,"Press the number that goes with the character you want and press enter!", 0.9, 0.9, 0);
	draw_text(room_width*0.25, room_height*0.6,"1");
	draw_text(room_width*0.5, room_height*0.6,"2");
	draw_text(room_width*0.75, room_height*0.6,"3");
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
SCORE 1000 POINTS, AND KILL THE WAVES TO SURVIVE!!
BUT BE CAREFUL, DIE AND THE ENEMIES WILL CHIP AWAY AT YOUR POINTS :(

MOVE USING THE ARROW KEYS OR W,A,S,D
PRESS E AND HOVER MOUSE OVER GRID TO PLACE WALLS
PICK UP IRON TO BE ABLE TO PLACE MORE WALLS
CLICK THE MOUSE TO SHOOT
>> PRESS ENTER TO START<<
>>>PRESS SHIFT FOR THE STREATEGY GUIDE<<<
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
"FINAL SCORE: "+string(global.score)

);

draw_text(
room_width/2, 950,
"PRESS ENTER TO RESTART"
);
draw_set_halign(fa_left);
break;




case Rm_Strategy:
draw_set_halign(fa_center);
var c = c_lime;
draw_text_transformed_color(
room_width/2, 400, "Strategy Guide!", 3, 3, 0, c,c,c,c, 1
);
draw_text(
room_width/2, 600,
@"PRESS ENTER TO RESTART


While holding down E a grid will appear, 
Hover your mouse over the desired spot and let go of E to build
But be ready to use your quickness to dodge enemies
You have a gun but it has a long downtime after a shot 
so use it wisely
"
);
} 