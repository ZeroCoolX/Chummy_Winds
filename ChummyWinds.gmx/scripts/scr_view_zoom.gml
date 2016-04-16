///scr_view_zoom(amount, view)//neg > -1 or pos < 1
var amount = 1+argument[0];
var view = argument[1];

//limit the zoom
if((view_wview[view] <= 64 && amount < 1) || (view_wview[view] >=1280 && amount > 1)){
    exit;//get out of script
}

//get the offset so that zooming happens from the middle not the top left corner
var offx = abs(view_wview[view] * amount - view_wview[view]);
var offy = abs(view_hview[view] * amount - view_hview[view]);

//Scale the view by the amount 
view_wview[view] *= amount;
view_hview[view] *= amount;

//Adjust the view position based on the scale
if(amount < 1){
    //add to the view's coord by the offset
    view_xview[view] += offx/2;//div 2 because half the width = center zoom
    view_yview[view] += offy/2;//div 2 because half the width = center zoom
}else if(amount > 1){
    //subtract to the view's coord by the offset
    view_xview[view] -= offx/2;//div 2 because half the width = center zoom
    view_yview[view] -= offy/2;//div 2 because half the width = center zoom
}
