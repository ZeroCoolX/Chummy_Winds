///scr_move_view()
var view = 0;

if(mouse_wheel_up()){

    scr_view_zoom(-0.1, view)//zoom in
}
if(mouse_wheel_down()){

    scr_view_zoom(0.1, view)//zoom out
}
