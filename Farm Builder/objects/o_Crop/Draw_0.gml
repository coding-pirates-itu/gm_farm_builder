draw_self();

if (NeedsWater)
{
    if (o_GameController.Money >= o_GameController.WaterPrice)
    {
        draw_sprite_ext(s_Water, NeedsWaterImage, x, y, 1, 1, 0, c_white, 0.7);
    }
    else
    {
        draw_sprite_ext(s_Water, NeedsWaterImage, x, y, 1, 1, 0, c_gray, 0.7);
    }
}
if (NeedsScythe)
{
    draw_sprite_ext(s_Scythe, NeedsScytheImage, x, y, 1, 1, 0, c_white, 0.6);
}