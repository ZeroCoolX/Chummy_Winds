///scr_idle
//Set some friction
friction = 0.5;
image_speed = 0;
image_index = 0;

///shape changing
if(Input.shape_one){
   scr_shape(spr_p_triangle_right, spr_p_triangle_left, spr_p_triangle_up, spr_p_triangle_down);
}
if(Input.shape_two){
   scr_shape(spr_p_circle_right, spr_p_circle_left, spr_p_circle_up, spr_p_circle_down);
}
if(Input.shape_three){
   scr_shape(spr_p_square_right, spr_p_square_left, spr_p_square_up, spr_p_square_down);
}

if(point_distance(x, y,  target.x, target.y) > 32){
   state = scr_move;
}else{
   state = scr_idle;
}
