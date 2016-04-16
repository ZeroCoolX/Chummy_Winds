///scr_dash_state()


//set the length
len = spd*4;
dir = point_direction(x, y, target.x, target.y);
//Get the speeds of the player
//function to convert a length and direction into a speed
hspd = lengthdir_x(len, dir)*3;
vspd = lengthdir_y(len, dir)*3;

x+= hspd;
y+=vspd;

