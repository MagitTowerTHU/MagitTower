//Button 650
//  On keypress "8"
on (keypress "8")
{
    if (this.now_case_id > 1) 
    {
        this.moves._y = this.moves._y - 30;
        --this.now_case_id;
        _root.PlaySound("music_10");
    }
}


//  On keypress "2"
on (keypress "2")
{
    if (this.now_case_id < 4) 
    {
        this.moves._y = this.moves._y + 30;
        ++this.now_case_id;
        _root.PlaySound("music_10");
    }
}


//  On keypress " "
on (keypress " ")
{
    this.Case_buy_02();
}


//  On keypress "5"
on (keypress "5")
{
    this.Case_buy_02();
}


