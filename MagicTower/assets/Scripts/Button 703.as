//Button 703
//  On keypress " "
on (keypress " ")
{
    if (_currentframe == 14) 
    {
        if (_root.Now_money < 500) 
        {
            this.gotoAndPlay(14);
        }
        else 
        {
            this.gotoAndPlay(16);
            this.now_case_mode = 2;
        }
    }
    if (_currentframe == 16 && this.now_case_mode == 1) 
    {
        this.gotoAndPlay(19);
    }
    else 
    {
        nextFrame();
    }
    _root.PlaySound("music_14");
}


