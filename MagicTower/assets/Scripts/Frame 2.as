//Frame 2
//  Action tag #0

if (_root.getBytesLoaded() < _root.getBytesTotal()) 
{
    gotoAndPlay(2);
    now_loading = int(_root.getBytesLoaded() / _root.getBytesTotal() * 100);
    _root.loding.gotoAndStop(now_loading);
}
else 
{
    gotoAndPlay(4);
}

