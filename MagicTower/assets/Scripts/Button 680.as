//Button 680
//  On keypress " "
on (keypress " ")
{
    if (this._currentframe == 12) 
    {
        if (_root.Now_mp >= 500) 
        {
            gotoAndPlay(14);
            this.now_case_mode = 2;
        }
        else 
        {
            gotoAndPlay(12);
        }
    }
    if (this._currentframe == 14 && this.now_case_mode == 1) 
    {
        this.gotoAndStop(17);
    }
    else 
    {
        nextFrame();
    }
    _root.PlaySound("music_14");
}


