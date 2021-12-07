/// Gun Logic
if (!global.pause) {
if(!instance_exists(Obj_Player)){
	instance_destroy();
}
else{

x = Obj_Player.x;
y = Obj_Player.y+10;
}

image_angle = point_direction(x,y,mouse_x,mouse_y);

firingdelay = firingdelay - 1;
recoil = max(0,recoil - 1);
if (mouse_check_button(mb_left) and (firingdelay < 0))
{
	recoil = 4;
	firingdelay = 35;
	with (instance_create_layer(x,y,"Bullets",Obj_Bullet))
	{
	speed = 25;	
	direction = other.image_angle + random_range(-3,3);
	image_angle = direction;
	audio_play_sound(Gun, 1, false);
	}
	
}
x = x - lengthdir_x(recoil, image_angle);
y = y - lengthdir_y(recoil, image_angle);

if (image_angle > 90) and (image_angle < 270)
{
image_yscale = -1;	
}
else
{
image_yscale = 1;	
}

}