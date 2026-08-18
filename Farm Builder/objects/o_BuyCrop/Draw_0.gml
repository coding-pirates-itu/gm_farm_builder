if (o_GameController.SelectedCrop == Crop)
{
    var border = 2;
    
    if (o_GameController.Money >= BuyPrice + o_GameController.WaterPrice)
    {
        draw_set_colour(SelectColour);
    }
    else
    {
        draw_set_colour(DisabledColour);
    }
    
    draw_rectangle(
        x - sprite_width / 2 + border,
        y - sprite_height / 2 + border,
        x + sprite_width / 2 - border,
        y + sprite_height / 2 - border,
        false);
}
draw_self();