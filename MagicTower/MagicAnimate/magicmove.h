#ifndef MAGICMOVE_H
#define MAGICMOVE_H

#include "magicanimate.h"
#include "../MagicDisplayObject/magicdisplayobject.h"

class MagicMove : public MagicAnimate
{
    int direction;
    int distance;
    int step;
    MagicDisplayObject *target;
public:
    MagicMove(MagicMap *, int, int, MagicDisplayObject *);
    MagicMove(MagicMap *, int, int, MagicDisplayObject *, int);
    virtual bool paint(QPainter *); // false -> please destroy me.
};

#endif // MAGICMOVE_H