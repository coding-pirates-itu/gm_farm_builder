// Crop growth animation timer
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
    // End of stage, an action is awaited
    NeedsWater = true;
    StageProgress = 0;
    alarm[AlarmWater] = 1;
}
else
{
    // In growth stage
	alarm[AlarmCrop] = game_get_speed(gamespeed_fps) / sprite_get_speed(sprite_index);
}