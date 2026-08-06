draw_self();

if (NeedsWater)
{
    if (o_GameController.Money >= o_GameController.WaterPrice)
    {
        draw_sprite(s_Water, NeedsWaterImage, x, y);
    }
    else
    {
        draw_sprite_ext(s_Water, NeedsWaterImage, x, y, 1, 1, 0, c_gray, 0.7);
    }
}
else if (NeedsScythe)
{
    draw_sprite(s_Scythe, NeedsScytheImage, x, y);
}