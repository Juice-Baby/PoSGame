/// @description Setup
cWid = 384;
zoom = .08;
p = oPlayer;

shake = 0;
shakePer = .9;
shakeFlt = 0;

live = function(){
	x = lerp(x,p.x,.35);
	y = lerp(y,p.y,.35);
	var mDis = point_distance(p.x,p.y,mouse_x,mouse_y);
	var mDir = point_direction(p.x,p.y,mouse_x,mouse_y);
	jump(mDis*zoom,mDir);
	
	x+=choose(-shake,shake);
	y+=choose(-shake,shake);
	
	shake*=shakePer;
	shake+=shakeFlt;
}

state = live;


