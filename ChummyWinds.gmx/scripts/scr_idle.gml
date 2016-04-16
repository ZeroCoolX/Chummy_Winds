///scr_idle
//Set some friction
friction = 0.5;
image_speed = 0;
image_index = 0;
if(point_distance(x, y,  target.x, target.y) > 32){
    state = scr_move;
}else{
    state = scr_idle;
}
