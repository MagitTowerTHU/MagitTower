//Frame 4
//  Action tag #0

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

