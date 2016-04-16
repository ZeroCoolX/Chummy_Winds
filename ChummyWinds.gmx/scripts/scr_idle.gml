///scr_idle
//Set some friction
friction = 0.5;
image_speed = 0;
image_index = 0;

///shape changing
if(shape_one){
   scr_shape(spr_ptriangle);
}
if(shape_two){
   scr_shape(spr_pcircle);
}
if(shape_three){
   scr_shape(spr_psquare);
}

if(point_distance(x, y,  target.x, target.y) > 32){
   state = scr_move;
}else{
   state = scr_idle;
}
