// Water animation timer
if (! NeedsWater)
{
    exit
}

NeedsWaterImage += 1;
alarm[AlarmWater] = game_get_speed(gamespeed_fps) / sprite_get_speed(s_Water);