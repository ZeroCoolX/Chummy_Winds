///scr_square_get_face()
chance = irandom_range(0,1);

if (xaxis = true){
   xaxis = false;
   if (x > Player.x){
       face = 0;
   }else if (x < Player.x){
       face = 2;
   }
}else{
   xaxis = true;
   if (y < Player.y){
       face = 3;
   }else if (y > Player.y){
       face = 1;
   }    
}

show_debug_message(face);
alarm[0] = 30;
state = scr_square_move;
