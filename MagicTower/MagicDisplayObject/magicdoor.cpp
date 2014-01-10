#include "magicdoor.h"
#include "../magicmap.h"
#include "../MagicAnimate/magicopen.h"

#define yellow 0
#define blue 1
#define red 2
#define silver 3

MagicDoor::MagicDoor(int x, int y, int color)
    : MagicWall(x, y)
{
    property["label"] = "door";
    this->color = color;
    switch(color)
    {
    case yellow:
        pix = new QPixmap(":/images/door_yellow");
        break;
    case red:
        pix = new QPixmap(":/images/door_red");
        break;
    case blue:
        pix = new QPixmap(":/images/door_blue");
        break;
    default:
        pix = new QPixmap(":/images/door_silver");
        break;
    }

}

bool MagicDoor::move(MagicMap *map)
{
    if (map->Tom()->consumeInventory("key", color))
    {
       // map->appendAnimate(new MagicOpen(map, 0, this, 16), true);
        property["enabled"] = 0;
        return runAction(map, true);
    }
    return runAction(map, false);
}

