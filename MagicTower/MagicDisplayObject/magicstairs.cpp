#include "magicstairs.h"

MagicStairs::MagicStairs(int x, int y, int direction)
    : MagicFloor(x, y)
{
    property["label"] = "stairs";
    this->direction = direction;
    if(direction == 1)
        pix = new QPixmap(":/images/upstairs");
    else
        pix = new QPixmap(":/images/downstairs");
}

bool MagicStairs::move(MagicMap *map)
{
    if (!runAction(map))
        return false;
    return true;
}