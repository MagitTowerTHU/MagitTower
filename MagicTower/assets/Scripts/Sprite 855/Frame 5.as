//Frame 5
//  Action tag #0

if (_root.mt_lines.bkground._alpha < 100) 
{
    gotoAndPlay(5);
}
else 
{
    _root.Display_lines = 1;
    if (_root.My_lifes_up == 1) 
    {
        _root.DelLineDisplay();
        _root.My_lifes_up = 0;
        if (_root.Now_line == 24) 
        {
            _root.Now_line = 26;
        }
        else 
        {
            ++_root.Now_line;
        }
        if (_root.mt_runline == 1) 
        {
            _root.Now_line = 23;
            _root.mt_runline = 0;
        }
        if (_root.mt_runline == 2) 
        {
            _root.Now_line = 24;
            _root.mt_runline = 0;
        }
        if (_root.mt_runline == 3) 
        {
            _root.Now_line = 25;
            _root.mt_runline = 0;
        }
        if (_root.Max_line < _root.Now_line) 
        {
            _root.Max_line = _root.Now_line;
        }
        _root.SetLineDisplay(1);
    }
    if (_root.My_lifes_down == 1) 
    {
        _root.DelLineDisplay();
        _root.My_lifes_down = 0;
        if (_root.Now_line >= 23 && _root.Now_line <= 25) 
        {
            _root.Now_line = 22;
        }
        else 
        {
            --_root.Now_line;
        }
        _root.SetLineDisplay(2);
    }
    gotoAndPlay(1);
}

