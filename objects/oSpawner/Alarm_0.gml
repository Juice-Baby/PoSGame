/// @description Spawn
var p = oPlayer;
var o = oSpiker;
if irandom(3)=0{
	o = oDodger;
}

var e = instance_create_depth(p.x,p.y,50,o);
with(e){
	jump(256+irandom(144),irandom(359));
}

alarm[0] = cooldown;
