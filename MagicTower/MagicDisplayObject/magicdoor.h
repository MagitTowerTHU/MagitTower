#ifndef MAGICDOOR_H
#define MAGICDOOR_H

/*
#define yellow 0
#define blue 1
#define red 2
#define silver 3
*/

#include "magicwall.h"

class MagicDoor : public MagicWall
{
    int color;

public:
    MagicDoor(int, int, int);
    virtual bool move(MagicMap *);
};

#endif // MAGICDOOR_H