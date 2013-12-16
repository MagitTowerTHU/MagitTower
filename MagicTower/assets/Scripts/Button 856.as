//Button 856
//  On keypress "<Left>"
on (keypress "<Left>")
{
    if (_root.Now_key_flag == 1 && _root.Display_list == 0 && _root.Display_jump == 0 && _root.Display_text == 0) 
    {
        _root.Move_arrow(1);
    }
}


//  On keypress "<Right>"
on (keypress "<Right>")
{
    if (_root.Now_key_flag == 1 && _root.Display_list == 0 && _root.Display_jump == 0 && _root.Display_text == 0) 
    {
        _root.Move_arrow(2);
    }
}


//  On keypress "<Up>"
on (keypress "<Up>")
{
    if (_root.Now_key_flag == 1 && _root.Display_list == 0 && _root.Display_jump == 0 && _root.Display_text == 0) 
    {
        _root.Move_arrow(3);
    }
}


//  On keypress "<Down>"
on (keypress "<Down>")
{
    if (_root.Now_key_flag == 1 && _root.Display_list == 0 && _root.Display_jump == 0 && _root.Display_text == 0) 
    {
        _root.move_arrow(4);
    }
}


//  On keypress "Q"
on (keypress "Q")
{
    if (_root.Now_key_flag == 1 && _root.Display_list == 0 && _root.Display_jump == 0 && _root.Display_text == 0) 
    {
        stopAllSounds();
        _root.DelBaseDisplay();
        _root.DelLineDisplay();
        gotoAndPlay(6166);
    }
}


//  On keypress "q"
on (keypress "q")
{
    if (_root.Now_key_flag == 1 && _root.Display_list == 0 && _root.Display_jump == 0 && _root.Display_text == 0) 
    {
        stopAllSounds();
        _root.DelBaseDisplay();
        _root.DelLineDisplay();
        gotoAndPlay(6166);
    }
}


//  On keypress "l"
on (keypress "l")
{
    if (_root.list_flag == 1 && _root.Now_key_flag == 1 && _root.Display_jump == 0 && _root.Display_text == 0) 
    {
        if (_root.Display_list == 0) 
        {
            _root.Now_key_flag = 0;
            _root.CopyMovie("mt_list", "mt_boss_list", 1460, _root.mt_lines._x, _root.mt_lines._y);
            _root.Display_list = 1;
        }
    }
    else if (_root.Display_list == 2) 
    {
        _root.Display_list = 3;
        _root.Now_key_flag = 1;
    }
}


//  On keypress "L"
on (keypress "L")
{
    if (_root.Now_key_flag == 1 && _root.list_flag == 1 && _root.Display_jump == 0 && _root.Display_text == 0) 
    {
        if (_root.Display_list == 0) 
        {
            _root.Now_key_flag = 0;
            _root.CopyMovie("mt_list", "mt_boss_list", 1460, _root.mt_lines._x, _root.mt_lines._y);
            _root.Display_list = 1;
        }
    }
    else if (_root.Display_list == 2) 
    {
        _root.Display_list = 3;
        _root.Now_key_flag = 1;
    }
}


//  On keypress "j"
on (keypress "j")
{
    if (_root.Now_key_flag == 1 && _root.jump_flag == 1 && _root.Display_list == 0 && _root.Display_text == 0) 
    {
        if (_root.Display_jump == 0) 
        {
            _root.Now_key_flag = 0;
            _root.CopyMovie("mt_jump", "mt_line_jump", 1460, _root.mt_lines._x, _root.mt_lines._y);
            _root.Display_jump = 1;
        }
    }
    else if (_root.Display_jump == 3) 
    {
        _root.Display_jump = 4;
    }
}


//  On keypress "J"
on (keypress "J")
{
    if (_root.jump_flag == 1 && _root.Now_key_flag == 1 && _root.Display_list == 0 && _root.Display_text == 0) 
    {
        if (_root.Display_jump == 0) 
        {
            _root.Now_key_flag = 0;
            _root.CopyMovie("mt_jump", "mt_line_jump", 1460, _root.mt_lines._x, _root.mt_lines._y);
            _root.Display_jump = 1;
        }
    }
    else if (_root.Display_jump == 3) 
    {
        _root.Display_jump = 4;
    }
}


//  On keypress "r"
on (keypress "r")
{
    if (_root.Now_key_flag == 1 && _root.Display_list == 0 && _root.Display_jump == 0 && _root.Display_text == 0) 
    {
        _root.DelBaseDisplay();
        _root.DelLineDisplay();
        gotoAndPlay(4343);
    }
}


//  On keypress "R"
on (keypress "R")
{
    if (_root.Now_key_flag == 1 && _root.Display_list == 0 && _root.Display_jump == 0 && _root.Display_text == 0) 
    {
        _root.DelBaseDisplay();
        _root.DelLineDisplay();
        gotoAndPlay(4343);
    }
}


//  On keypress "s"
on (keypress "s")
{
    if (_root.Now_key_flag == 1 && _root.Display_list == 0 && _root.Display_jump == 0 && _root.Display_text == 0) 
    {
        if (_root.Now_line > 0) 
        {
            _root.SaveData();
            _root.savedate_id = 1;
        }
    }
}


//  On keypress "S"
on (keypress "S")
{
    if (_root.Now_key_flag == 1 && _root.Display_list == 0 && _root.Display_jump == 0 && _root.Display_text == 0) 
    {
        if (_root.Now_line > 0) 
        {
            _root.SaveData();
            _root.savedate_id = 1;
        }
    }
}


//  On keypress "a"
on (keypress "a")
{
    if (_root.Now_key_flag == 1 && _root.Display_list == 0 && _root.Display_jump == 0 && _root.Display_text == 0) 
    {
        if (_root.savedate_id == 1) 
        {
            _root.DelLineDisplay();
            _root.LoadData();
            _root.SetLineDisplay(3);
        }
    }
}


//  On keypress "A"
on (keypress "A")
{
    if (_root.Now_key_flag == 1 && _root.Display_list == 0 && _root.Display_jump == 0 && _root.Display_text == 0) 
    {
        if (_root.savedate_id == 1) 
        {
            _root.DelLineDisplay();
            _root.LoadData();
            _root.SetLineDisplay(3);
        }
    }
}


