///scr_triangle_move()
wait = irandom_range(20,50);

switch(face) {
  case TRIANGLE_UPLEFT: 
      x+= -spd;
      y+= -spd;
      break;
  case TRIANGLE_DOWNLEFT:
      x+= -spd;
      y+= spd;
      break;
  case TRIANGLE_UPRIGHT:
      x+= spd;
      y+= -spd;
      break;
  case TRIANGLE_DOWNRIGHT:
      x+= spd;
      y+= spd;
      break;
}
if(alarm[0] < 0) {
  state = scr_triangle_idle;
  alarm[0] = wait;
}
