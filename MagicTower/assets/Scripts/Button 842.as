//Button 842
//  On release
on (release)
{
    if (_root.begin_key == 1) 
    {
        _root.help_list._visible = true;
        _root.bottons._visible = false;
        _root.help_list.gotoAndPlay(1);
        _root.begin_key = 0;
    }
}


