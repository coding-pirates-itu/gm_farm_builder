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
        audio_play_sound(snd_Water, 1, false);
    }
}
else if (NeedsScythe)
{
    o_GameController.Money += SellPrice;
    Land.Growing = noone;
    instance_destroy();
    audio_play_sound(snd_Sell, 1, false);
}