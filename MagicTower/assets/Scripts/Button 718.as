//Button 718
//  On keypress "2"
on (keypress "2")
{
    this.now_move_id = this.now_move_id + 1;
    if (this.now_move_id == 21) 
    {
        this.now_move_id = 1;
        this.moves._y = this.moves._y - 150;
        this.moves._x = this.moves._x - this.move_x * 2;
    }
    else if (this.now_move_id == 8) 
    {
        this.moves._x = this.moves._x + this.move_x;
        this.moves._y = this.moves._y - 180;
    }
    else if (this.now_move_id == 15) 
    {
        this.moves._x = this.moves._x + this.move_x;
        this.moves._y = this.moves._y - 180;
    }
    else 
    {
        this.moves._y = this.moves._y + 30;
    }
    _root.PlaySound("music_11");
}


//  On keypress "8"
on (keypress "8")
{
    this.now_move_id = this.now_move_id - 1;
    if (this.now_move_id == 0) 
    {
        this.now_move_id = 20;
        this.moves._y = this.moves._y + 150;
        this.moves._x = this.moves._x + this.move_x * 2;
    }
    else if (this.now_move_id == 7) 
    {
        this.moves._x = this.moves._x - this.move_x;
        this.moves._y = this.moves._y + 180;
    }
    else if (this.now_move_id == 14) 
    {
        this.moves._x = this.moves._x - this.move_x;
        this.moves._y = this.moves._y + 180;
    }
    else 
    {
        this.moves._y = this.moves._y - 30;
    }
    _root.PlaySound("music_11");
}


//  On keypress "5"
on (keypress "5")
{
    _root.Display_jump = 2;
    if (this.now_move_id < _root.Max_line) 
    {
        _root.DelLineDisplay();
        _root.Now_line = this.now_move_id;
        _root.PlaySound("music_07");
    }
    else 
    {
        _root.PlaySound("music_10");
    }
}


//  On keypress " "
on (keypress " ")
{
    _root.Display_jump = 2;
    if (this.now_move_id < _root.Max_line) 
    {
        _root.DelLineDisplay();
        _root.Now_line = this.now_move_id;
        _root.PlaySound("music_07");
    }
    else 
    {
        _root.PlaySound("music_10");
    }
}


//  On keypress "J"
on (keypress "J")
{
    _root.Display_jump = 4;
    _root.Now_key_flag = 1;
}


//  On keypress "j"
on (keypress "j")
{
    _root.Display_jump = 4;
    _root.Now_key_flag = 1;
}


