///scr_player_face()
if(abs(vspd) > abs(hspd)) {
    if(sign(vspd) > 0) {
        image_speed = .35;
        sprite_index = down_image;
    } else {
        image_speed = .25;
        sprite_index = up_image;
    }
}
if(abs(vspd) < abs(hspd)) {
    if(sign(hspd) > 0) {
        image_speed = .35;
        sprite_index = right_image;
    } else {
        image_speed = .35;
        sprite_index = left_image;
    } 
}
