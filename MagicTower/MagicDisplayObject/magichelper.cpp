#include "magichelper.h"

#include "magicarmour.h"
#include "magicdoor.h"
#include "magicenemy.h"
#include "magicfloor.h"
#include "magickey.h"
#include "magicstairs.h"
#include "magictom.h"
#include "magicwall.h"
#include "magicweapon.h"

#include <QRegExp>

QHash<QString, QString> MagicHelper::alias = QHash<QString, QString>();

MagicObject *MagicHelper::createObject(QString target, int x, int y, int level)
{
    static bool isFirstTime = 1;
    if (isFirstTime)
    {
        isFirstTime = 0;
        MagicHelper::alias.clear();
        alias["a"] = "armour";
        alias["dr"] = "door";
        alias["e"] = "enemy";
        alias["k"] = "key";
        alias["up"] = "up";
        alias["dn"] = "down";
        alias["t"] = "tom";
        alias["w"] = "wall";
        alias["s"] = "weapon"; // sword
    }
    QRegExp rx("^(\\w*)?(#\\w*)?(.\\w*)?");
    rx.indexIn(target);

    QString category = rx.cap(1);
    QString detail = rx.cap(2);
    if (alias.find(category) != alias.end())
        target = category = alias[category] + "_" + detail;

    if (category == "armour")
        return new MagicArmour(x, y, level, detail);
    else if (category == "door")
        return new MagicDoor(x, y, level, detail.toInt());
    else if (category == "enemy")
        return new MagicEnemy(x, y, level, detail);
    else if (category == "key")
        return new MagicKey(x, y, level, detail.toInt());
    else if (category == "up")
        return new MagicStairs(x, y, level, 1);
    else if (category == "down")
        return new MagicStairs(x, y, level, -1);
    else if (category == "tom")
        return new MagicTom(x, y, level);
    else if (category == "wall")
        return new MagicWall(x, y, level);
    else if (category == "weapon")
        return new MagicWeapon(x, y, level, detail);
}
