// Crop (self) animation timer
if (NeedsWater || NeedsScythe)
{
    exit
}

image_index += 1;
if (image_index >= image_number)
{
    // All stages completed
    NeedsScythe = true;
    image_index -= 1;
    alarm[AlarmScythe] = 1;
}
else if (image_index % FramesPerStage == 0)
{
    // Next stage
    NeedsWater = true;
    image_index -= 1;
    alarm[AlarmWater] = 1;
}
else
{
	alarm[AlarmCrop] = room_speed / sprite_get_speed(sprite_index);
}