//Sprite 795
//  Frame 0
//    Action tag #0

stop();

//  Frame 5
//    Action tag #0

_root.Display_say[8] = 2;
_root.mt_line_19[7][5] = 0;
_root.Now_key_flag = 1;
stop();

//  Frame 8
//    Action tag #0

_root.Display_say[8] = 5;
if (_root.boss_kills == 1) 
{
    _root.boss_kills = 0;
    _root.Now_key_flag = 0;
}
stop();

//  Frame 9
//    Action tag #0

_root.Now_key_flag = 0;

//  Frame 11
//    Action tag #0

_root.Display_say[8] = 9;
_root.Now_key_flag = 1;
_root.jump_flag = 1;
if (_root.boss_kills == 1) 
{
    _root.boss_kills = 0;
    _root.Now_key_flag = 0;
}
stop();

