//Frame 6
//  Action tag #0

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

