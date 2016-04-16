///scr_idle
//Set some friction
friction = 0.5;

if(point_distance(x, y,  target.x, target.y) > 5){
show_debug_message("move bitch");
    state = scr_enemy_move;
}else{
    state = scr_enemy_idle;
}
