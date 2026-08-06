// Scythe animation timer
if (! NeedsScythe)
{
    exit
}

NeedsScytheImage += 1;
alarm[AlarmScythe] = game_get_speed(gamespeed_fps) / sprite_get_speed(s_Scythe);