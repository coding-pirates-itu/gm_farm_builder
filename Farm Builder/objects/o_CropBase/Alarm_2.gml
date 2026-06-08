// Scythe animation timer
if (! NeedsScythe)
{
    exit
}

NeedsScytheImage += 1;
if (NeedsScytheImage >= sprite_get_number(s_Scythe))
{
    NeedsScytheImage = 0;
}

alarm[AlarmScythe] = game_get_speed(gamespeed_fps) / sprite_get_speed(s_Scythe);