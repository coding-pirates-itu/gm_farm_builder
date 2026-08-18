if (IsCreationFrame)
{
    IsCreationFrame = false;
    exit;
}

if (NeedsWater)
{
    if (o_GameController.Money >= o_GameController.WaterPrice)
    {
        // Next growth stage
        NeedsWater = false;
        o_GameController.Money -= o_GameController.WaterPrice;
        WaterUsage = 100;
        StageStartTime = current_time;
        alarm[AlarmCrop] = game_get_speed(gamespeed_fps) / sprite_get_speed(sprite_index);
    }
}
else if (NeedsScythe)
{
    o_GameController.Money += SellPrice;
    Land.Growing = noone;
    instance_destroy();
}