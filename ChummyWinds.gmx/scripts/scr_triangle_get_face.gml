///scr_triangle_get_face()
///face = irandom_range(0,4);

if ((x > Player.x) && (y > Player.y)){
   face = 0;
}else if ((x < Player.x) && (y > Player.y)){
   face = 1;
}else if (x > Player.x && y < Player.y){
   face = 2;
}else if (x < Player.x && y < Player.y){
   face = 3;
}


show_debug_message(face);
alarm[0] = 30;
state = scr_triangle_move;
