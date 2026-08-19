if (o_GameController.SelectedCrop == noone) exit; 
if (Growing != noone) exit;
    
if (o_GameController.Money >= o_GameController.SelectedPrice + o_GameController.WaterPrice)
{
    o_GameController.Money -= o_GameController.SelectedPrice;
    
    Growing = instance_create_layer(x, y, "Crops", o_GameController.SelectedCrop);
    Growing.Land = self;
    audio_play_sound(snd_Buy, 1, false);
}
