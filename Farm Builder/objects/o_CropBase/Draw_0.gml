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
else
{
    var stageDuration = FramesPerStage / sprite_get_speed(sprite_index);
    var elapsed = (current_time - StageStartTime) / 1000; // seconds
    var stageProgress = clamp(elapsed / stageDuration, 0, 1) * 100; // percent
    
    if (stageProgress > 0)
    {
        draw_healthbar(
            x - sprite_width / 2 + 2,
            y - sprite_height / 2 + 2,
            x + sprite_width / 2 - 2,
            y - sprite_height / 2 + 12,
            100 - stageProgress,
            c_black, WaterBarColor, WaterBarColor, 0, false, true);
    }
}