///scr_idle
//Set some friction
friction = 0.5;

if(point_distance(x, y,  Player.x, Player.y) > 5){
   state = scr_enemy_move;
}else{
   state = scr_enemy_idle;
}
