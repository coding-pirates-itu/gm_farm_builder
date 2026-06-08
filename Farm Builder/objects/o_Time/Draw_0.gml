draw_self();

minutes = floor(o_GameController.ElapsedTime / 60);
seconds = floor(o_GameController.ElapsedTime mod 60);
var ss = string(seconds);
if (seconds < 10)
{
    ss = "0" + ss;
}
var t = string(minutes) + ":" + ss;

draw_set_font(fnt_Money);
draw_set_colour(Foreground);
draw_set_halign(fa_right);
draw_set_valign(fa_middle);
draw_text(x, y, t);
