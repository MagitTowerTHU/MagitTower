//Sprite 453
//  Frame 0
//    Action tag #0

var kill_number = 0;
var kill_left = left_gong - right_fang;
if (kill_left < 0) 
{
    kill_left = 0;
}
var kill_right = right_gong - left_fang;
if (kill_right < 0) 
{
    kill_right = 0;
}
_root.Now_key_flag = 0;

//  Frame 23
//    Action tag #0

if (left_hp > 0 || right_hp > 0) 
{
    if (kill_number % 2 == 0) 
    {
        kill_max = random(200);
        if (kill_max <= _root.Now_life) 
        {
            left_hp = left_hp - kill_right * 2;
            _root.PlaySound("music_08");
        }
        else 
        {
            left_hp = left_hp - kill_right;
            _root.PlaySound("music_05");
        }
        if (left_hp < 0) 
        {
            left_hp = 0;
        }
    }
    if (kill_number % 2 == 1) 
    {
        right_hp = right_hp - kill_left;
        if (left_gong > right_fang) 
        {
            _root.PlaySound("music_12");
        }
        else 
        {
            _root.PlaySound("music_13");
        }
        if (left_hp == 0) 
        {
            gotoAndPlay(35);
        }
    }
    ++kill_number;
}

//  Frame 33
//    Action tag #0

if (left_hp > 0) 
{
    gotoAndPlay(24);
}

//  Frame 34
//    Action tag #0

_root.PlaySound("music_07");

//  Frame 53
//    Action tag #0

stop();
_root.Display_kill = 2;
_root.Now_hp = right_hp;

