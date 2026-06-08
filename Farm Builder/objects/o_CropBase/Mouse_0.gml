if (NeedsWater && o_GameController.Money >= o_GameController.WaterPrice)
{
    NeedsWater = false;
    o_GameController.Money -= o_GameController.WaterPrice;
    alarm[AlarmCrop] = game_get_speed(gamespeed_fps) / sprite_get_speed(sprite_index);
}
else if (NeedsScythe)
{
    o_GameController.Money += SellCost;
    instance_destroy();
}