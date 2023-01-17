/// @description Setup
hsp = 0;
vsp = 0;
moveSpeed = 3;
accel = 15;
hpMax = 30;
hp = hpMax;

size = 5;
image_xscale = size;
image_yscale = size;

live = function(){
	var p = oPlayer;
	var mDir = point_direction(x,y,p.x,p.y);
	
	jumpApr(moveSpeed,mDir,moveSpeed/accel);
	
	x+=hsp;
	y+=vsp;
	var vDis = point_distance(x,y,x+hsp,y+vsp);
	image_angle+=(vDis*9)/size;
}

depth = 50;

state = live;


