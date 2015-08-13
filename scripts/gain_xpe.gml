///gain_xpe(monster,amount)
with(argument0)
{
    xpe += argument1
    while(xpe >= max_xpe)
    {
        level ++
        xpe -= max_xpe
        max_xpe *= 1.5
    }
}