/// @description Explode
var amt = 3;
var i = 0;
var ad = 350/amt;
var a = irandom(ad);
repeat(amt){
	var e = instance_create_depth(x,y,depth,oExplosion);
	e.image_index = irandom(2);
	with(e){
		sprite_index = sExplosion;
		size = 2;
		image_xscale = size;
		image_yscale = size;
		damage = other.damage;
		jump(i*12,a+(i*ad));
	}
	i++;
}
oCamera.shake+=4;


