draw_self();
if (o_GameController.SelectedCrop == noone) exit;
    
draw_set_font(fnt_Money);
draw_set_colour(Foreground);
draw_set_halign(fa_right);
draw_set_valign(fa_middle);

draw_text(x, y, string(o_GameController.SelectedPrice));
