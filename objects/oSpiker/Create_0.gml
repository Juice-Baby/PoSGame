/// @description Setup
hsp = 0;
vsp = 0;
moveSpeed = 2;
accel = 25;
hpMax = 3;
hp = hpMax;

live = function(){
	var p = oPlayer;
	var mDir = point_direction(x,y,p.x,p.y);
	
	jumpApr(moveSpeed,mDir,moveSpeed/accel);
	
	x+=hsp;
	y+=vsp;
	var vDis = point_distance(x,y,x+hsp,y+vsp);
	image_angle+=vDis*9;
}

depth = 50;

state = live;


