// Crop (self) animation timer
if (NeedsWater || NeedsScythe)
{
    exit
}

image_index += 1;
if (image_index == image_number - 1)
{
    // All stages completed
    NeedsScythe = true;
    alarm[AlarmScythe] = 1;
}
else if (image_index % FramesPerStage == 0)
{
    // Next stage
    NeedsWater = true;
    alarm[AlarmWater] = 1;
}
else
{
	alarm[AlarmCrop] = game_get_speed(gamespeed_fps) / sprite_get_speed(sprite_index);
}