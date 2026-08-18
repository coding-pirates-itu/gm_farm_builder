function Select(buyObject)
{
    SelectedCrop = buyObject.Crop;
    SelectedPrice = buyObject.BuyPrice;
}

function AddWheat(amount)
{
    Wheat += amount;
}

function AddCarrots(amount)
{
    Carrots += amount;
}

function AddPumpkins(amount)
{
    Pumpkins += amount;
}

StartTime = 0;
SelectedCrop = noone;