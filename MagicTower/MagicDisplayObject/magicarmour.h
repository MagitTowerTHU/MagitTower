#ifndef MAGICARMOUR_H
#define MAGICARMOUR_H

#include "magicinventory.h"

class MagicArmour : public MagicInventory
{
    QString name;
public:
    MagicArmour(int, int, QString);
};

#endif // MAGICARMOUR_H
