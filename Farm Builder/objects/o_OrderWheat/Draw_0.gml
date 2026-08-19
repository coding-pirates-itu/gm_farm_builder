draw_self();
    
draw_set_font(fnt_Price);
draw_set_colour(Foreground);
draw_set_halign(fa_right);
draw_set_valign(fa_middle);

draw_text(x, y, string(max(o_GameController.Order.Wheat - o_GameController.Wheat, 0)));
