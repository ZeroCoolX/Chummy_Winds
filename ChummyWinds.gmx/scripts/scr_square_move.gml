
///scr_square_move()
wait = round(irandom_range(0,20));

switch(face) {
  case SQUARE_LEFT: 
      x+= -spd;
      break;
  case SQUARE_UP:
      y+= -spd;
      break;
  case SQUARE_RIGHT:
      x+= spd;
      break;
  case SQUARE_DOWN:
      y+= spd;
      break;
}
if(alarm[0] < 0) {
  state = scr_square_idle;
  alarm[0] = wait;
}
