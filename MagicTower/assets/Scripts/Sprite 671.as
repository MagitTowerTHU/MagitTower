//Sprite 671
//  Frame 0
//    Action tag #0

stop();

//  Frame 1
//    Action tag #0

function Case_buy_01()
{
    if (_root.Now_money >= 25) 
    {
        if (this.now_case_id === 1) 
        {
            _root.Now_money = _root.Now_money - 25;
            _root.Now_hp = _root.Now_hp + 800;
            _root.mt_Mylife.My_hp = _root.Now_hp;
            _root.mt_Mylife.My_money = _root.Now_money;
            _root.PlaySound("music_11");
        }
        else if (this.now_case_id === 2) 
        {
            _root.Now_money = _root.Now_money - 25;
            _root.Now_gong = _root.Now_gong + 4;
            _root.mt_Mylife.My_gong = _root.Now_gong;
            _root.mt_Mylife.My_money = _root.Now_money;
            _root.PlaySound("music_11");
        }
        else if (this.now_case_id === 3) 
        {
            _root.Now_money = _root.Now_money - 25;
            _root.Now_fang = _root.Now_fang + 4;
            _root.mt_Mylife.My_fang = _root.Now_fang;
            _root.mt_Mylife.My_money = _root.Now_money;
            _root.PlaySound("music_11");
        }
        else if (this.now_case_id === 4) 
        {
            _root.PlaySound("music_07");
            this.gotoAndPlay("end");
        }
        return;
    }
    if (this.now_case_id == 4) 
    {
        _root.PlaySound("music_07");
        this.gotoAndPlay("end");
        return;
    }
    _root.PlaySound("music_09");
}
var now_case_id = 1;
stop();

//  Frame 2
//    Action tag #0

function Case_buy_02()
{
    if (_root.Now_money >= 100) 
    {
        if (this.now_case_id === 1) 
        {
            _root.Now_money = _root.Now_money - 100;
            _root.Now_hp = _root.Now_hp + 4000;
            _root.mt_Mylife.My_hp = _root.Now_hp;
            _root.mt_Mylife.My_money = _root.Now_money;
            _root.PlaySound("music_11");
        }
        else if (this.now_case_id === 2) 
        {
            _root.Now_money = _root.Now_money - 100;
            _root.Now_gong = _root.Now_gong + 20;
            _root.mt_Mylife.My_gong = _root.Now_gong;
            _root.mt_Mylife.My_money = _root.Now_money;
            _root.PlaySound("music_11");
        }
        else if (this.now_case_id === 3) 
        {
            _root.Now_money = _root.Now_money - 100;
            _root.Now_fang = _root.Now_fang + 20;
            _root.mt_Mylife.My_fang = _root.Now_fang;
            _root.mt_Mylife.My_money = _root.Now_money;
            _root.PlaySound("music_11");
        }
        else if (this.now_case_id === 4) 
        {
            _root.PlaySound("music_07");
            this.gotoAndPlay("end");
        }
        return;
    }
    if (this.now_case_id == 4) 
    {
        _root.PlaySound("music_07");
        this.gotoAndPlay("end");
        return;
    }
    _root.PlaySound("music_09");
}
var now_case_id = 1;
stop();

//  Frame 3
//    Action tag #0

function Case_buy_03()
{
    if (this.now_case_id === 1) 
    {
        if (_root.Now_money >= 10) 
        {
            _root.Now_money = _root.Now_money - 10;
            _root.Now_yellow = _root.Now_yellow + 1;
            _root.mt_Mykey.Key_yellow = _root.Now_yellow;
            _root.mt_Mylife.My_money = _root.Now_money;
            _root.PlaySound("music_11");
        }
        else 
        {
            _root.PlaySound("music_09");
        }
        return;
    }
    else if (this.now_case_id === 2) 
    {
        if (_root.Now_money >= 50) 
        {
            _root.Now_money = _root.Now_money - 50;
            _root.Now_blue = _root.Now_blue + 1;
            _root.mt_Mykey.Key_blue = _root.Now_blue;
            _root.mt_Mylife.My_money = _root.Now_money;
            _root.PlaySound("music_11");
        }
        else 
        {
            _root.PlaySound("music_09");
        }
        return;
    }
    else if (this.now_case_id === 3) 
    {
        if (_root.Now_money >= 100) 
        {
            _root.Now_money = _root.Now_money - 100;
            _root.Now_red = _root.Now_red + 1;
            _root.mt_Mykey.Key_red = _root.Now_red;
            _root.mt_Mylife.My_money = _root.Now_money;
            _root.PlaySound("music_11");
        }
        else 
        {
            _root.PlaySound("music_09");
        }
        return;
    }
    else if (this.now_case_id !== 4) 
    {
        return;
    }
    _root.PlaySound("music_07");
    this.gotoAndStop("end");
}
var now_case_id = 1;
stop();

//  Frame 4
//    Action tag #0

function Case_buy_04()
{
    if (this.now_case_id === 1) 
    {
        if (_root.Now_yellow >= 1) 
        {
            _root.Now_yellow = _root.Now_yellow - 1;
            _root.Now_money = _root.Now_money + 7;
            _root.mt_Mylife.My_money = _root.Now_money;
            _root.mt_Mykey.Key_yellow = _root.Now_yellow;
            _root.PlaySound("music_11");
        }
        else 
        {
            _root.PlaySound("music_09");
        }
        return;
    }
    else if (this.now_case_id === 2) 
    {
        if (_root.Now_blue >= 1) 
        {
            _root.Now_blue = _root.Now_blue - 1;
            _root.Now_money = _root.Now_money + 35;
            _root.mt_Mylife.My_money = _root.Now_money;
            _root.mt_Mykey.Key_blue = _root.Now_blue;
            _root.PlaySound("music_11");
        }
        else 
        {
            _root.PlaySound("music_09");
        }
        return;
    }
    else if (this.now_case_id === 3) 
    {
        if (_root.Now_red >= 1) 
        {
            _root.Now_red = _root.Now_red - 1;
            _root.Now_money = _root.Now_money + 70;
            _root.mt_Mylife.My_money = _root.Now_money;
            _root.mt_Mykey.Key_red = _root.Now_red;
            _root.PlaySound("music_11");
        }
        else 
        {
            _root.PlaySound("music_09");
        }
        return;
    }
    else if (this.now_case_id !== 4) 
    {
        return;
    }
    _root.PlaySound("music_07");
    this.gotoAndStop("end");
}
var now_case_id = 1;
stop();

//  Frame 5
//    Action tag #0

function Case_buy_05()
{
    if (this.now_case_id === 1) 
    {
        if (_root.Now_mp >= 100) 
        {
            _root.Now_life = _root.Now_life + 1;
            _root.Now_mp = _root.Now_mp - 100;
            _root.Now_hp = _root.Now_hp + 1000;
            _root.Now_gong = _root.Now_gong + 7;
            _root.Now_fang = _root.Now_fang + 7;
            _root.mt_Mylife.My_live_id = _root.Now_life;
            _root.mt_Mylife.My_mp = _root.Now_mp;
            _root.mt_Mylife.My_hp = _root.Now_hp;
            _root.mt_Mylife.My_gong = _root.Now_gong;
            _root.mt_Mylife.My_fang = _root.Now_fang;
            _root.PlaySound("music_11");
        }
        else 
        {
            _root.PlaySound("music_09");
        }
        return;
    }
    else if (this.now_case_id === 2) 
    {
        if (_root.Now_mp >= 30) 
        {
            _root.Now_mp = _root.Now_mp - 30;
            _root.Now_gong = _root.Now_gong + 5;
            _root.mt_Mylife.My_mp = _root.Now_mp;
            _root.mt_Mylife.My_gong = _root.Now_gong;
            _root.PlaySound("music_11");
        }
        else 
        {
            _root.PlaySound("music_09");
        }
        return;
    }
    else if (this.now_case_id === 3) 
    {
        if (_root.Now_mp >= 30) 
        {
            _root.Now_mp = _root.Now_mp - 30;
            _root.Now_fang = _root.Now_fang + 5;
            _root.mt_Mylife.My_mp = _root.Now_mp;
            _root.mt_Mylife.My_fang = _root.Now_fang;
            _root.PlaySound("music_11");
        }
        else 
        {
            _root.PlaySound("music_09");
        }
        return;
    }
    else if (this.now_case_id !== 4) 
    {
        return;
    }
    _root.PlaySound("music_07");
    this.gotoAndStop("end");
}
var now_case_id = 1;
stop();

//  Frame 6
//    Action tag #0

function Case_buy_06()
{
    if (this.now_case_id === 1) 
    {
        if (_root.Now_mp >= 270) 
        {
            _root.Now_life = _root.Now_life + 3;
            _root.Now_mp = _root.Now_mp - 270;
            _root.Now_hp = _root.Now_hp + 3000;
            _root.Now_gong = _root.Now_gong + 20;
            _root.Now_fang = _root.Now_fang + 20;
            _root.mt_Mylife.My_live_id = _root.Now_life;
            _root.mt_Mylife.My_mp = _root.Now_mp;
            _root.mt_Mylife.My_hp = _root.Now_hp;
            _root.mt_Mylife.My_gong = _root.Now_gong;
            _root.mt_Mylife.My_fang = _root.Now_fang;
            _root.PlaySound("music_11");
        }
        else 
        {
            _root.PlaySound("music_09");
        }
        return;
    }
    else if (this.now_case_id === 2) 
    {
        if (_root.Now_mp >= 95) 
        {
            _root.Now_mp = _root.Now_mp - 95;
            _root.Now_gong = _root.Now_gong + 17;
            _root.mt_Mylife.My_mp = _root.Now_mp;
            _root.mt_Mylife.My_gong = _root.Now_gong;
            _root.PlaySound("music_11");
        }
        else 
        {
            _root.PlaySound("music_09");
        }
        return;
    }
    else if (this.now_case_id === 3) 
    {
        if (_root.Now_mp >= 95) 
        {
            _root.Now_mp = _root.Now_mp - 95;
            _root.Now_fang = _root.Now_fang + 17;
            _root.mt_Mylife.My_mp = _root.Now_mp;
            _root.mt_Mylife.My_fang = _root.Now_fang;
            _root.PlaySound("music_11");
        }
        else 
        {
            _root.PlaySound("music_09");
        }
        return;
    }
    else if (this.now_case_id !== 4) 
    {
        return;
    }
    _root.PlaySound("music_07");
    this.gotoAndStop("end");
}
var now_case_id = 1;
stop();

//  Frame 7
//    Action tag #0

_root.Display_buy = 2;
_root.Now_key_flag = 1;
stop();

