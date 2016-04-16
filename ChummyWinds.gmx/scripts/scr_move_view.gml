///scr_move_view()
var view = 0;

if(mouse_wheel_up()){
show_debug_message("trying");
    scr_view_zoom(-0.1, view)//zoom in
}
if(mouse_wheel_down()){
show_debug_message("okay");
    scr_view_zoom(0.1, view)//zoom out
}
