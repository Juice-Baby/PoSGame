/// @description destroy
var m = timePart(sMuzzleFlash,4,irandom(359),0,0,0);
with(m){
	image_speed = 0;
	jump(other.speed,other.image_angle);
}
instance_destroy();


