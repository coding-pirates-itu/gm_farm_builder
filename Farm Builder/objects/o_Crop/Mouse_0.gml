if (NeedsWater && o_GameController.Money >= o_GameController.WaterPrice)
{
    NeedsWater = false;
    o_GameController.Money -= o_GameController.WaterPrice;
    alarm[AlarmCrop] = 1;
}
else if (NeedsScythe)
{
    o_GameController.Money += SellCost;
    o_GameController.Wheat += 1;
    instance_destroy();
}