//Button 628
//  On keypress " "
on (keypress " ")
{
    if (_currentframe === 1) 
    {
        _root.list_flag = 1;
    }
    else if (_currentframe === 2) 
    {
        _root.jump_flag = 1;
    }
    else if (_currentframe === 3) 
    {
        _root.clean_flag = 1;
    }
    else if (_currentframe === 4) 
    {
        _root.my_love = 1;
    }
    gotoAndPlay(7);
}


