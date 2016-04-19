///scr_get_input
//gotta have it so like when they press a certain "shapeshift" function they are put 
//into a special state so if they collide with an enemy while in that certian state its iether good or bad for them
if(instance_exists(Player) && !Player.dead){
   shape_one = keyboard_check_pressed(ord('A'));
   shape_two = keyboard_check_pressed(ord('S'));
   shape_three = keyboard_check_pressed(ord('D'));
   shape_four = keyboard_check(ord('F'));
   shape_five = keyboard_check_pressed(ord('G'));
   dash_key = keyboard_check_pressed(vk_space);
   if(shape_one || shape_two || shape_three){
    audio_em = audio_emitter_create();
       audio_emitter_gain(audio_em, 0.5);
       audio_play_sound_on(audio_em, snd_shape_change, false, 104);
    }
}

pause_key = keyboard_check_pressed(vk_escape);
if(pause_key){
       audio_play_sound(snd_page_move,115, false);
}
down_key = keyboard_check_pressed(vk_down);
up_key = keyboard_check_pressed(vk_up);
enter_key = keyboard_check_pressed(vk_enter);



//unnecessary atm

// Get the axis
/*xaxis = (right_key - left_key);
yaxis = (down_key - up_key);*/
/*
//check for gamepad input
if (gamepad_is_connected(0)){
 gamepad_set_axis_deadzone(0, .35);
 xaxis = gamepad_axis_value(0, gp_axislh);
 yaxis = gamepad_axis_value(0, gp_axislv);
 dash_key = gamepad_button_check_pressed(0, gp_face1);
 attack_key = gamepad_button_check_pressed(0, gp_face3);
 pause_key = gamepad_button_check_pressed(0, gp_start);
}*/
