//Frame 2
//  Action tag #0

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

