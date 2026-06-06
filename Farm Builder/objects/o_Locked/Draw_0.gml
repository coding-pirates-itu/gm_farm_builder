draw_self();

if (o_GameController.Money >= Price)
{
    draw_set_colour(Foreground);
}
else
{
    draw_set_colour(ForegroundLocked);
}

draw_set_font(fnt_Money);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

draw_text(x, y, string(Price));
