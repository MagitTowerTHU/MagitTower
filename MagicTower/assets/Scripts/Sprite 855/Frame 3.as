//Frame 3
//  Action tag #0

if (_root.mt_lines.bkground._alpha > 0) 
{
    gotoAndPlay(3);
}
else 
{
    _root.Display_lines = 0;
    _root.Now_Key_flag = 1;
    if (_root.Now_line == 0) 
    {
        _root.mt_Mykey.Key_line = "序  章";
    }
    else if (_root.Now_line >= 23 && _root.Now_line <= 25) 
    {
        _root.mt_Mykey.Key_line = "第 23 层";
    }
    else if (_root.Now_line == 26) 
    {
        _root.mt_Mykey.Key_line = "地下层";
    }
    else 
    {
        _root.mt_Mykey.Key_line = "第 " + _root.Now_line + " 层";
    }
    gotoAndPlay(1);
}

