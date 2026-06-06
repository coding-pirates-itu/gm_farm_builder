// Water animation timer
if (! NeedsWater)
{
    exit
}

NeedsWaterImage += 1;
if (NeedsWaterImage >= sprite_get_number(s_Water))
{
    NeedsWaterImage = 0;
}

alarm[AlarmWater] = room_speed / sprite_get_speed(s_Water);