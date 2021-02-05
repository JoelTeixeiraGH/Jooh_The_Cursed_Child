if (xprevious=x && yprevious=y) {
draw_sprite(sprite_index,0,x,y)
}else{
draw_sprite(sprite_index,-1,x,y)
}

draw_sprite(spr_shadow, image_index, x,y);
draw_self();