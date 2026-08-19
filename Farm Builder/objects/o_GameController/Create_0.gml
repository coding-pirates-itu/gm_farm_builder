function Select(buyObject)
{
    SelectedCrop = buyObject.Crop;
    SelectedPrice = buyObject.BuyPrice;
}

function AddWheat(amount)
{
    Wheat += amount;
    CheckWin();
}

function AddCarrots(amount)
{
    Carrots += amount;
    CheckWin();
}

function AddPumpkins(amount)
{
    Pumpkins += amount;
    CheckWin();
}

function CheckWin()
{
    if (Wheat >= Order.Wheat && Carrots >= Order.Carrots && Pumpkins >= Order.Pumpkins)
    {
        room_goto_next();
        exit;
    }
}

StartTime = 0;
SelectedCrop = noone;
Order = { Wheat: 5, Carrots: 3, Pumpkins: 1 }
