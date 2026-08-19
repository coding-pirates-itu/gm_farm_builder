// Buy land
if (o_GameController.Money >= Price)
{
    o_GameController.Money -= Price;
    instance_create_layer(x, y, layer, o_Field);
    instance_destroy();
}