/// @description Shadow
draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,c_black,.35);
draw_sprite_ext(sprite_index,image_index,x,y-z,image_xscale,image_yscale,image_angle,image_blend,1);

zsp=-grav;
z+=zsp;
if z<0{
	var c = instance_create_depth(x,y,90,oNone);
	c.sprite_index = other.sprite_index;
	c.image_angle = other.image_angle;
	c.image_blend = other.image_blend;
	instance_destroy();
}

image_angle+=6+(speed);


