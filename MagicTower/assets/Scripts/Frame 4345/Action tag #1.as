//Action tag #1

function PlaySound(soundid)
{
    var nowsound = new Sound();
    nowsound.attachSound(soundid);
    nowsound.start();
}
function CopyMovie(mc_base, mc_name, mc_lable, mc_x, mc_y)
{
    _root.attachMovie(mc_base, mc_name, mc_lable);
    eval(eval("_root." + mc_name))._x = mc_x;
    eval(eval("_root." + mc_name))._y = mc_y;
}
function DelMovie(mc_name)
{
    eval(mc_name).removeMovieClip();
}
function SetBaseDisplay()
{
    i = 0;
    while (i < 13) 
    {
        j = 0;
        while (j < 18) 
        {
            temp_name1 = "mt_" + i + "_" + j;
            if (i >= 1 && i <= 11 && j >= 6 && j <= 16) 
            {
                _root.CopyMovie("mt_00", temp_name1, 100 + i * 20 + j, 15 + j * 32, 15 + i * 32);
            }
            else 
            {
                _root.CopyMovie("mt_29", temp_name1, 100 + i * 20 + j, 15 + j * 32, 15 + i * 32);
            }
            ++j;
        }
        ++i;
    }
    _root.CopyMovie("mt_other_01", "mt_Mylife", 150 + i * 20 + j, 30, 30);
    _root.mt_Mylife.My_live_id = _root.Base_life;
    _root.mt_Mylife.My_hp = _root.Base_hp;
    _root.mt_Mylife.My_gong = _root.Base_gong;
    _root.mt_Mylife.My_fang = _root.Base_fang;
    _root.mt_Mylife.My_money = _root.Base_money;
    _root.mt_Mylife.My_mp = _root.Base_mp;
    _root.CopyMovie("mt_other_02", "mt_Mykey", 151 + i * 20 + j, 30, 210);
    _root.mt_Mykey.Key_yellow = _root.Base_yellow;
    _root.mt_Mykey.Key_blue = _root.Base_blue;
    _root.mt_Mykey.Key_red = _root.Base_red;
    if (_root.Now_line == 0) 
    {
        _root.mt_Mykey.Key_line = "序  章";
        return;
    }
    if (_root.Now_line >= 23 && _root.Now_line <= 25) 
    {
        _root.mt_Mykey.Key_line = "第 23 层";
        return;
    }
    if (_root.Now_line == 26) 
    {
        _root.mt_Mykey.Key_line = "地下层";
        return;
    }
    _root.mt_Mykey.Key_line = "第 " + _root.Now_line + " 层";
}
function DelBaseDisplay()
{
    i = 0;
    while (i < 13) 
    {
        j = 0;
        while (j < 18) 
        {
            temp_name1 = "mt_" + i + "_" + j;
            if (i >= 1 && i <= 11 && j >= 6 && j <= 16) 
            {
                _root.DelMovie(temp_name1);
            }
            else 
            {
                _root.DelMovie(temp_name1);
            }
            ++j;
        }
        ++i;
    }
    _root.DelMovie("mt_Mylife");
    _root.DelMovie("mt_Mykey");
    _root.DelMovie("mt_man");
    _root.DelMovie("mt_lines");
    _root.DelMovie("mt_sister");
}
function SetLineDisplay(arrow_id)
{
    _root.CopyMovie("mt_other_00", "mt_lines", 1001, 367, 207);
    if (_root.Now_line == 0) 
    {
        _root.mt_lines.bkground.Line_txt = "序  章";
    }
    else if (_root.Now_line >= 23 && _root.Now_line <= 25) 
    {
        _root.mt_lines.bkground.Line_txt = "第 23 层";
    }
    else if (_root.Now_line == 26) 
    {
        _root.mt_lines.bkground.Line_txt = "地下层";
    }
    else 
    {
        _root.mt_lines.bkground.Line_txt = "第 " + _root.Now_line + " 层";
    }
    _root.Display_lines = 1;
    if (_root.Now_line < 10) 
    {
        temp_num = "_root.mt_line_0" + _root.Now_line;
    }
    else 
    {
        temp_num = "_root.mt_line_" + _root.Now_line;
    }
    if (_root.Now_line == 0 || _root.Now_line == 25) 
    {
        _root.mt_bgsound.gotoAndPlay("sound_01");
    }
    if (_root.Now_line >= 1 && _root.Now_line <= 7) 
    {
        if (_root.mt_bgsound._currentframe < 11 || _root.mt_bgsound._currentframe >= 18) 
        {
            _root.mt_bgsound.gotoAndPlay("sound_02");
        }
    }
    if (_root.Now_line >= 8 && _root.Now_line <= 14) 
    {
        if (_root.mt_bgsound._currentframe < 18 || _root.mt_bgsound._currentframe >= 25) 
        {
            _root.mt_bgsound.gotoAndPlay("sound_03");
        }
    }
    if (_root.Now_line >= 15 && _root.Now_line <= 18) 
    {
        if (_root.mt_bgsound._currentframe < 25 || _root.mt_bgsound._currentframe >= 32) 
        {
            _root.mt_bgsound.gotoAndPlay("sound_04");
        }
    }
    if (_root.Now_line >= 19) 
    {
        if (_root.mt_bgsound._currentframe < 32 || _root.mt_bgsound._currentframe >= 45) 
        {
            _root.mt_bgsound.gotoAndPlay("sound_05");
        }
    }
    i = 0;
    while (i < 11) 
    {
        j = 0;
        while (j < 11) 
        {
            if (Number(eval(temp_num)[i][j])) 
            {
                temp_name1 = "mt_m_" + i + "_" + j;
                if (Number(eval(temp_num)[i][j]) < 10) 
                {
                    base_name = "mt_0" + eval(temp_num)[i][j];
                }
                else if (Number(eval(temp_num)[i][j]) == 115) 
                {
                    base_name = "mt_15";
                }
                else if (Number(eval(temp_num)[i][j]) == 120) 
                {
                    base_name = "mt_20";
                }
                else if (Number(eval(temp_num)[i][j]) == 119 || Number(eval(temp_num)[i][j]) == 129 || Number(eval(temp_num)[i][j]) == 139 || Number(eval(temp_num)[i][j]) == 149 || Number(eval(temp_num)[i][j]) == 159 || Number(eval(temp_num)[i][j]) == 169 || Number(eval(temp_num)[i][j]) == 179) 
                {
                    base_name = "mt_00";
                }
                else 
                {
                    base_name = "mt_" + eval(temp_num)[i][j];
                }
                if (arrow_id == 0 && Number(eval(temp_num)[i][j]) == 99) 
                {
                    temp_name1 = "mt_man";
                    _root.Now_xid = i;
                    _root.Now_yid = j;
                }
                else if (arrow_id == 1 && Number(eval(temp_num)[i][j]) == 97) 
                {
                    temp_name1 = "mt_man";
                    _root.Now_xid = i;
                    _root.Now_yid = j;
                }
                else if (arrow_id == 2 && Number(eval(temp_num)[i][j]) == 98) 
                {
                    temp_name1 = "mt_man";
                    _root.Now_xid = i;
                    _root.Now_yid = j;
                }
                else if (arrow_id == 3 && Number(eval(temp_num)[i][j]) == 97) 
                {
                    temp_name1 = "mt_man";
                }
                if (!(arrow_id == 1 && Number(eval(temp_num)[i][j]) == 98)) 
                {
                    if (!(arrow_id == 2 && Number(eval(temp_num)[i][j]) == 97)) 
                    {
                        if (!(arrow_id == 0 && Number(eval(temp_num)[i][j]) == 98)) 
                        {
                            if (!(arrow_id == 3 && Number(eval(temp_num)[i][j]) == 98)) 
                            {
                                if (temp_name1 == "mt_man") 
                                {
                                    _root.CopyMovie("mt_99", "mt_man", 1000, 207 + j * 32, 47 + i * 32);
                                }
                                else if (base_name == "mt_24") 
                                {
                                    _root.CopyMovie("mt_24", "mt_sister", 500 + (i + 1) * 11 + j + 1, 207 + j * 32, 47 + i * 32);
                                    _root.mt_man_x = i;
                                    _root.mt_man_y = j;
                                }
                                else 
                                {
                                    _root.CopyMovie(base_name, temp_name1, 500 + (i + 1) * 11 + j + 1, 207 + j * 32, 47 + i * 32);
                                }
                            }
                        }
                    }
                }
                if ((Number(eval(temp_num)[i][j]) >= 1 && Number(eval(temp_num)[i][j]) <= 5) || Number(eval(temp_num)[i][j]) == 15 || Number(eval(temp_num)[i][j]) == 115) 
                {
                    eval("_root." + temp_name1).gotoAndStop(1);
                }
            }
            ++j;
        }
        ++i;
    }
    if (arrow_id == 3) 
    {
        _root.mt_man._x = 207 + _root.Now_yid * 32;
        _root.mt_man._y = 47 + _root.Now_xid * 32;
    }
    if (_root.Now_line == 21 && _root.mt_line_21[1][5] == 59) 
    {
        _root.jump_flag = 0;
    }
}
function DelLineDisplay()
{
    if (_root.Now_line < 10) 
    {
        temp_num = "_root.mt_line_0" + _root.Now_line;
    }
    else 
    {
        temp_num = "_root.mt_line_" + _root.Now_line;
    }
    i = 0;
    for (;;) 
    {
        if (i >= 11) 
        {
            return;
        }
        j = 0;
        while (j < 11) 
        {
            if (Number(eval(temp_num)[i][j]) == 24) 
            {
                temp_name1 = "mt_sister";
            }
            else 
            {
                temp_name1 = "mt_m_" + i + "_" + j;
            }
            _root.DelMovie(temp_name1);
            ++j;
        }
        ++i;
    }
}
function Move_arrow(arrow_id)
{
    if (_root.Now_line < 10) 
    {
        temp_lines = "_root.mt_line_0" + _root.Now_line;
    }
    else 
    {
        temp_lines = "_root.mt_line_" + _root.Now_line;
    }
    temp_x = _root.Now_xid;
    temp_y = _root.Now_yid;
    sound_id = 0;
    if (arrow_id !== 0) 
    {
        if (arrow_id === 1) 
        {
            if (temp_y > 0) 
            {
                temp_y = temp_y - 1;
                sound_id = 1;
            }
        }
        else if (arrow_id === 2) 
        {
            if (temp_y < 10) 
            {
                temp_y = temp_y + 1;
                sound_id = 1;
            }
        }
        else if (arrow_id === 3) 
        {
            if (temp_x > 0) 
            {
                temp_x = temp_x - 1;
                sound_id = 1;
            }
        }
        else if (arrow_id === 4) 
        {
            if (temp_x < 10) 
            {
                temp_x = temp_x + 1;
                sound_id = 1;
            }
        }
    }
    if (Number(eval(temp_lines)[temp_x][temp_y]) == 0 || Number(eval(temp_lines)[temp_x][temp_y]) == 97 || Number(eval(temp_lines)[temp_x][temp_y]) == 98 || Number(eval(temp_lines)[temp_x][temp_y]) == 99) 
    {
        _root.mt_man._x = 207 + temp_y * 32;
        _root.mt_man._y = 47 + temp_x * 32;
        if (arrow_id === 1) 
        {
            _root.mt_man.gotoAndPlay("three");
        }
        else if (arrow_id === 2) 
        {
            _root.mt_man.gotoAndPlay("five");
        }
        else if (arrow_id === 3) 
        {
            _root.mt_man.gotoAndPlay("sever");
        }
        else if (arrow_id === 4) 
        {
            _root.mt_man.gotoAndPlay("one");
        }
        if (Number(eval(temp_lines)[_root.Now_xid][_root.Now_yid]) == 0 || Number(eval(temp_lines)[_root.Now_xid][_root.Now_yid]) == 99) 
        {
            eval(temp_lines)[_root.Now_xid][_root.Now_yid] = 0;
        }
        _root.Now_xid = temp_x;
        _root.Now_yid = temp_y;
        if (sound_id == 1) 
        {
            _root.PlaySound("music_00");
        }
    }
    if (Number(eval(temp_lines)[temp_x][temp_y]) == 6) 
    {
        _root.Now_key_flag = 0;
        _root.Display_text = 1;
        _root.CopyMovie("mt_other_03", "mt_display_text", 1410, 290, 150);
        _root.mt_display_text.MT.text = "得到一把 黄钥匙 ！";
        _root.PlaySound("music_01");
        temp_names = "mt_m_" + temp_x + "_" + temp_y;
        _root.DelMovie(temp_names);
        eval(temp_lines)[temp_x][temp_y] = 0;
        _root.Now_yellow = _root.Now_yellow + 1;
        _root.mt_Mykey.Key_yellow = _root.Now_yellow;
    }
    if (Number(eval(temp_lines)[temp_x][temp_y]) == 2 && _root.Now_yellow > 0) 
    {
        _root.Now_key_flag = 0;
        _root.Open_room = 1;
        _root.PlaySound("music_07");
        temp_names = "mt_m_" + temp_x + "_" + temp_y;
        eval(temp_names).play();
        eval(temp_lines)[temp_x][temp_y] = 0;
        _root.Last_x = temp_x;
        _root.Last_y = temp_y;
        _root.Now_yellow = _root.Now_yellow - 1;
        _root.mt_Mykey.Key_yellow = _root.Now_yellow;
    }
    if (Number(eval(temp_lines)[temp_x][temp_y]) == 7) 
    {
        _root.Now_key_flag = 0;
        _root.Display_text = 1;
        _root.CopyMovie("mt_other_03", "mt_display_text", 1410, 290, 150);
        _root.mt_display_text.MT.text = "得到一把 蓝钥匙 ！";
        _root.PlaySound("music_01");
        temp_names = "mt_m_" + temp_x + "_" + temp_y;
        _root.DelMovie(temp_names);
        eval(temp_lines)[temp_x][temp_y] = 0;
        _root.Now_blue = _root.Now_blue + 1;
        _root.mt_Mykey.Key_blue = _root.Now_blue;
    }
    if (Number(eval(temp_lines)[temp_x][temp_y]) == 3 && _root.Now_blue > 0) 
    {
        _root.Now_key_flag = 0;
        _root.Open_room = 1;
        _root.PlaySound("music_07");
        temp_names = "mt_m_" + temp_x + "_" + temp_y;
        eval(temp_names).play();
        eval(temp_lines)[temp_x][temp_y] = 0;
        _root.Last_x = temp_x;
        _root.Last_y = temp_y;
        _root.Now_blue = _root.Now_blue - 1;
        _root.mt_Mykey.Key_blue = _root.Now_blue;
    }
    if (Number(eval(temp_lines)[temp_x][temp_y]) == 8) 
    {
        _root.Now_key_flag = 0;
        _root.Display_text = 1;
        _root.CopyMovie("mt_other_03", "mt_display_text", 1410, 290, 150);
        _root.mt_display_text.MT.text = "得到一把 红钥匙 ！";
        _root.PlaySound("music_01");
        temp_names = "mt_m_" + temp_x + "_" + temp_y;
        _root.DelMovie(temp_names);
        eval(temp_lines)[temp_x][temp_y] = 0;
        _root.Now_red = _root.Now_red + 1;
        _root.mt_Mykey.Key_red = _root.Now_red;
    }
    if (Number(eval(temp_lines)[temp_x][temp_y]) == 4 && _root.Now_red > 0) 
    {
        _root.Now_key_flag = 0;
        _root.Open_room = 1;
        _root.PlaySound("music_07");
        temp_names = "mt_m_" + temp_x + "_" + temp_y;
        eval(temp_names).play();
        eval(temp_lines)[temp_x][temp_y] = 0;
        _root.Last_x = temp_x;
        _root.Last_y = temp_y;
        _root.Now_red = _root.Now_red - 1;
        _root.mt_Mykey.Key_red = _root.Now_red;
    }
    if ((Number(eval(temp_lines)[temp_x][temp_y]) >= 40 && Number(eval(temp_lines)[temp_x][temp_y]) <= 70) || Number(eval(temp_lines)[temp_x][temp_y]) == 188 || Number(eval(temp_lines)[temp_x][temp_y]) == 198) 
    {
        if (Number(eval(temp_lines)[temp_x][temp_y]) == 188) 
        {
            tmp_boss = 31;
        }
        else if (Number(eval(temp_lines)[temp_x][temp_y]) == 198) 
        {
            tmp_boss = 32;
        }
        else 
        {
            tmp_boss = Number(eval(temp_lines)[temp_x][temp_y]) - 40;
        }
        if (tmp_boss == 19 && _root.Now_line < 22) 
        {
            _root.boss_kills = 1;
        }
        if (_root.boss_man[tmp_boss][2] == _root.Now_gong && _root.boss_man[tmp_boss][1] == _root.Now_fang) 
        {
            kill_flag = 0;
        }
        else 
        {
            tmp_kills = int(_root.boss_man[tmp_boss][0] / (_root.Now_gong - _root.boss_man[tmp_boss][2])) * (_root.boss_man[tmp_boss][1] - _root.Now_fang);
            if (tmp_boss === 20) 
            {
                tmp_kills = tmp_kills + 100;
            }
            else if (tmp_boss === 12) 
            {
                tmp_kills = tmp_kills + 300;
            }
            else if (tmp_boss === 10) 
            {
                tmp_kills = tmp_kills + int(_root.Now_hp / 4);
            }
            else if (tmp_boss === 17) 
            {
                tmp_kills = tmp_kills + int(_root.Now_hp / 3);
            }
        }
        if (_root.boss_man[tmp_boss][2] >= _root.Now_gong) 
        {
            kill_flag = 0;
        }
        else if (tmp_kills > _root.Now_hp) 
        {
            kill_flag = 0;
        }
        else 
        {
            kill_flag = 1;
        }
        if (kill_flag == 0) 
        {
            _root.PlaySound("music_10");
        }
        else 
        {
            temp_names = "mt_" + eval(temp_lines)[temp_x][temp_y];
            _root.Now_boss_id = tmp_boss;
            _root.Now_key_flag = 0;
            _root.Display_kill = 1;
            if (Number(eval(temp_lines)[temp_x][temp_y]) === 60) 
            {
                _root.Now_hp = _root.Now_hp - 100;
                _root.mt_Mylife.My_hp = _root.Now_hp;
                _root.PlaySound("music_20");
            }
            else if (Number(eval(temp_lines)[temp_x][temp_y]) === 52) 
            {
                _root.Now_hp = _root.Now_hp - 300;
                _root.mt_Mylife.My_hp = _root.Now_hp;
                _root.PlaySound("music_24");
            }
            else if (Number(eval(temp_lines)[temp_x][temp_y]) === 50) 
            {
                _root.Now_hp = _root.Now_hp - int(_root.Now_hp / 4);
                _root.mt_Mylife.My_hp = _root.Now_hp;
                _root.PlaySound("music_22");
            }
            else if (Number(eval(temp_lines)[temp_x][temp_y]) === 57) 
            {
                _root.Now_hp = _root.Now_hp - int(_root.Now_hp / 3);
                _root.mt_Mylife.My_hp = _root.Now_hp;
                _root.PlaySound("music_23");
            }
            _root.CopyMovie("mt_other_04", "mt_kills", 1405, 290, 150);
            _root.CopyMovie("mt_99", "mt_kills_right", 1406, 505, 105);
            _root.CopyMovie(temp_names, "mt_kills_left", 1407, 70, 105);
            _root.mt_kills_left._xscale = _root.mt_kills_left._xscale * 2;
            _root.mt_kills_left._yscale = _root.mt_kills_left._yscale * 2;
            _root.mt_kills_right._xscale = _root.mt_kills_right._xscale * 2;
            _root.mt_kills_right._yscale = _root.mt_kills_right._yscale * 2;
            if (_root.Now_boss_id == 148) 
            {
                _root.Now_boss_id = 31;
            }
            if (_root.Now_boss_id == 158) 
            {
                _root.Now_boss_id = 32;
            }
            _root.mt_kills.left_hp = _root.boss_man[_root.Now_boss_id][0];
            _root.mt_kills.left_gong = _root.boss_man[_root.Now_boss_id][1];
            _root.mt_kills.left_fang = _root.boss_man[_root.Now_boss_id][2];
            _root.mt_kills.right_hp = _root.Now_hp;
            _root.mt_kills.right_gong = _root.Now_gong;
            _root.mt_kills.right_fang = _root.Now_fang;
            _root.Now_boss_x = temp_x;
            _root.Now_boss_y = temp_y;
        }
    }
    if (arrow_id == 100) 
    {
        _root.Display_text = 1;
        _root.CopyMovie("mt_other_03", "mt_display_text", 1410, 290, 150);
        _root.mt_display_text.MT.text = "得到金币数 " + _root.boss_man[_root.Now_boss_id][3] + " 经验值 " + _root.boss_man[_root.Now_boss_id][4] + " ！";
        _root.PlaySound("music_03");
        if (_root.Now_boss_id == 31 || _root.Now_boss_id == 32) 
        {
            var temp_i = 0;
            while (temp_i < 3) 
            {
                var temp_j = 0;
                while (temp_j < 3) 
                {
                    temp_names = "mt_m_" + (_root.Now_boss_x - 2 + temp_i) + "_" + (_root.Now_boss_y - 1 + temp_j);
                    _root.DelMovie(temp_names);
                    eval(temp_lines)[_root.Now_boss_x - 2 + temp_i][_root.Now_boss_y - 1 + temp_j] = 0;
                    ++temp_j;
                }
                ++temp_i;
            }
        }
        else 
        {
            temp_names = "mt_m_" + _root.Now_boss_x + "_" + _root.Now_boss_y;
            _root.DelMovie(temp_names);
            eval(temp_lines)[_root.Now_boss_x][_root.Now_boss_y] = 0;
        }
        _root.Now_money = _root.Now_money + _root.boss_man[_root.Now_boss_id][3];
        _root.Now_mp = _root.Now_mp + _root.boss_man[_root.Now_boss_id][4];
        _root.mt_Mylife.My_money = _root.Now_money;
        _root.mt_Mylife.My_hp = _root.Now_hp;
        _root.mt_Mylife.My_mp = _root.Now_mp;
    }
    if (Number(eval(temp_lines)[temp_x][temp_y]) == 11) 
    {
        _root.Now_key_flag = 0;
        _root.Display_text = 1;
        _root.CopyMovie("mt_other_03", "mt_display_text", 1410, 290, 150);
        _root.mt_display_text.MT.text = "得到一个小血瓶 生命加 200 ！";
        _root.PlaySound("music_01");
        temp_names = "mt_m_" + temp_x + "_" + temp_y;
        _root.DelMovie(temp_names);
        eval(temp_lines)[temp_x][temp_y] = 0;
        _root.Now_hp = _root.Now_hp + 200;
        _root.mt_Mylife.My_hp = _root.Now_hp;
    }
    if (Number(eval(temp_lines)[temp_x][temp_y]) == 12) 
    {
        _root.Now_key_flag = 0;
        _root.Display_text = 1;
        _root.CopyMovie("mt_other_03", "mt_display_text", 1410, 290, 150);
        _root.mt_display_text.MT.text = "得到一个大血瓶 生命加 500 ！";
        _root.PlaySound("music_01");
        temp_names = "mt_m_" + temp_x + "_" + temp_y;
        _root.DelMovie(temp_names);
        eval(temp_lines)[temp_x][temp_y] = 0;
        _root.Now_hp = _root.Now_hp + 500;
        _root.mt_Mylife.My_hp = _root.Now_hp;
    }
    if (Number(eval(temp_lines)[temp_x][temp_y]) == 10) 
    {
        _root.Now_key_flag = 0;
        _root.Display_text = 1;
        _root.CopyMovie("mt_other_03", "mt_display_text", 1410, 290, 150);
        _root.mt_display_text.MT.text = "得到一个红宝石 攻击力加 3 ！";
        _root.PlaySound("music_01");
        temp_names = "mt_m_" + temp_x + "_" + temp_y;
        _root.DelMovie(temp_names);
        eval(temp_lines)[temp_x][temp_y] = 0;
        _root.Now_gong = _root.Now_gong + 3;
        _root.mt_Mylife.My_gong = _root.Now_gong;
    }
    if (Number(eval(temp_lines)[temp_x][temp_y]) == 9) 
    {
        _root.Now_key_flag = 0;
        _root.Display_text = 1;
        _root.CopyMovie("mt_other_03", "mt_display_text", 1410, 290, 150);
        _root.mt_display_text.MT.text = "得到一个蓝宝石 防御力加 3 ！";
        _root.PlaySound("music_01");
        temp_names = "mt_m_" + temp_x + "_" + temp_y;
        _root.DelMovie(temp_names);
        eval(temp_lines)[temp_x][temp_y] = 0;
        _root.Now_fang = _root.Now_fang + 3;
        _root.mt_Mylife.My_fang = _root.Now_fang;
    }
    if (Number(eval(temp_lines)[temp_x][temp_y]) == 13 || Number(eval(temp_lines)[temp_x][temp_y]) == 14) 
    {
        _root.Now_key_flag = 0;
        _root.PlaySound("music_07");
        if (_root.Now_line == 0) 
        {
            _root.mt_lines.bkground.Line_txt = "序  章";
        }
        else if (_root.Now_line >= 23 && _root.Now_line <= 25) 
        {
            _root.mt_lines.bkground.Line_txt = "第 23 层";
        }
        else if (_root.Now_line == 26) 
        {
            _root.mt_lines.bkground.Line_txt = "地下层";
        }
        else 
        {
            _root.mt_lines.bkground.Line_txt = "第 " + _root.Now_line + " 层";
        }
        _root.Display_lines = 2;
        if (Number(eval(temp_lines)[temp_x][temp_y]) == 13) 
        {
            _root.My_lifes_up = 1;
            if (_root.Now_line == 22 && temp_x == 5 && temp_y == 0) 
            {
                _root.mt_runline = 1;
            }
            if (_root.Now_line == 22 && temp_x == 5 && temp_y == 10) 
            {
                _root.mt_runline = 3;
            }
            if (_root.Now_line == 22 && temp_x == 10 && temp_y == 5) 
            {
                _root.mt_runline = 2;
            }
        }
        if (Number(eval(temp_lines)[temp_x][temp_y]) == 14) 
        {
            _root.My_lifes_down = 1;
        }
    }
    if (Number(eval(temp_lines)[temp_x][temp_y]) == 5 && _root.Now_line == 24) 
    {
        if (_root.mt_GetMoney[0] == 1 && _root.mt_GetMoney[1] == 1 && _root.mt_GetMoney[2] == 1) 
        {
            if (_root.open_last_door == 0) 
            {
                _root.mt_line_26[1][4] = 191;
                _root.mt_line_26[1][5] = 192;
                _root.mt_line_26[1][6] = 193;
                _root.mt_line_26[2][4] = 194;
                _root.mt_line_26[2][5] = 195;
                _root.mt_line_26[2][6] = 196;
                _root.mt_line_26[3][4] = 197;
                _root.mt_line_26[3][5] = 198;
                _root.mt_line_26[3][6] = 199;
            }
            _root.Now_key_flag = 0;
            _root.PlaySound("music_07");
            if (_root.Now_line == 0) 
            {
                _root.mt_lines.bkground.Line_txt = "序  章";
            }
            else if (_root.Now_line >= 23 && _root.Now_line <= 25) 
            {
                _root.mt_lines.bkground.Line_txt = "第 23 层";
            }
            else if (_root.Now_line == 26) 
            {
                _root.mt_lines.bkground.Line_txt = "地下层";
            }
            else 
            {
                _root.mt_lines.bkground.Line_txt = "第 " + _root.Now_line + " 层";
            }
            _root.Display_lines = 2;
            _root.My_lifes_up = 1;
            if (_root.mt_line_26[3][5] == 188 || _root.mt_line_26[3][5] == 198) 
            {
                _root.jump_flag = 0;
            }
        }
    }
    if (Number(eval(temp_lines)[temp_x][temp_y]) == 24 && _root.Display_say[0] == 0) 
    {
        _root.Now_key_flag = 0;
        _root.Display_say[0] = 1;
        _root.CopyMovie("mt_say_01", "mtsay_001", 1350, 380, 207);
    }
    if (Number(eval(temp_lines)[temp_x][temp_y]) == 28 && _root.Display_say[6] == 0) 
    {
        _root.Now_key_flag = 0;
        _root.Display_say[6] = 1;
        _root.CopyMovie("mt_say_06", "mtsay_006", 1350, 380, 207);
    }
    if (Number(eval(temp_lines)[temp_x][temp_y]) == 119 && _root.Display_say[7] == 0) 
    {
        _root.Now_key_flag = 0;
        _root.Display_say[7] = 1;
        _root.CopyMovie("mt_say_07", "mtsay_007", 1350, 380, 207);
    }
    if (Number(eval(temp_lines)[temp_x][temp_y]) == 129 && _root.Display_say[8] == 0) 
    {
        _root.Now_key_flag = 0;
        _root.Display_say[8] = 1;
        _root.CopyMovie("mt_say_08", "mtsay_008", 1350, 380, 207);
    }
    if (Number(eval(temp_lines)[temp_x][temp_y]) == 24 && _root.mt_changes == 1 && _root.my_love == 0) 
    {
        _root.Now_key_flag = 0;
        _root.Display_say[0] = 1;
        _root.CopyMovie("mt_say_01", "mtsay_001", 1350, 380, 207);
        _root.mtsay_001.gotoAndPlay("say_three");
        _root.mt_GetMoney[0] = 1;
        _root.mt_changes = 0;
        _root.mt_LastGame_ID = 1;
    }
    if (Number(eval(temp_lines)[temp_x][temp_y]) == 24 && _root.my_love == 1) 
    {
        _root.Now_key_flag = 0;
        _root.Display_say[0] = 1;
        _root.CopyMovie("mt_say_01", "mtsay_001", 1350, 380, 207);
        if (Number(_root.mt_GetMoney[0]) == 1) 
        {
            _root.mtsay_001.gotoAndPlay("say_four");
            _root.mt_line_20[7][5] = 13;
        }
        else 
        {
            _root.mtsay_001.gotoAndPlay("say_two");
            _root.mt_line_20[7][5] = 13;
        }
        _root.my_love = 0;
        _root.mt_changes = 0;
    }
    if (Number(eval(temp_lines)[temp_x][temp_y]) == 24 && _root.Now_line == 22) 
    {
        _root.Now_key_flag = 0;
        _root.Display_say[0] = 1;
        _root.CopyMovie("mt_say_01", "mtsay_001", 1350, 380, 207);
        if (Number(_root.mt_GetMoney[0]) == 1 && Number(_root.mt_GetMoney[1]) == 1 && Number(_root.mt_GetMoney[2]) == 1) 
        {
            _root.mtsay_001.gotoAndPlay("say_six");
        }
        else 
        {
            _root.mtsay_001.gotoAndPlay("say_five");
        }
    }
    if (Number(eval(temp_lines)[temp_x][temp_y]) >= 71 && Number(eval(temp_lines)[temp_x][temp_y]) <= 75) 
    {
        _root.Now_key_flag = 0;
        _root.Display_text = 1;
        _root.CopyMovie("mt_other_03", "mt_display_text", 1410, 290, 150);
        if (Number(eval(temp_lines)[temp_x][temp_y]) === 71) 
        {
            _root.mt_display_text.MT.text = "得到 铁剑 攻击加 10 ！";
            _root.Now_gong = _root.Now_gong + 10;
        }
        else if (Number(eval(temp_lines)[temp_x][temp_y]) === 72) 
        {
            _root.mt_display_text.MT.text = "得到 钢剑 攻击加 40 ！";
            _root.Now_gong = _root.Now_gong + 40;
        }
        else if (Number(eval(temp_lines)[temp_x][temp_y]) === 73) 
        {
            _root.mt_display_text.MT.text = "得到 青锋剑 攻击加 70 ！";
            _root.Now_gong = _root.Now_gong + 70;
        }
        else if (Number(eval(temp_lines)[temp_x][temp_y]) === 74) 
        {
            _root.mt_display_text.MT.text = "得到 圣光剑 攻击加 110 ！";
            _root.Now_gong = _root.Now_gong + 110;
        }
        else if (Number(eval(temp_lines)[temp_x][temp_y]) === 75) 
        {
            _root.mt_display_text.MT.text = "得到 星光神剑 攻击加 150 ！";
            _root.Now_gong = _root.Now_gong + 150;
        }
        _root.PlaySound("music_01");
        temp_names = "mt_m_" + temp_x + "_" + temp_y;
        _root.DelMovie(temp_names);
        eval(temp_lines)[temp_x][temp_y] = 0;
        _root.mt_Mylife.My_gong = _root.Now_gong;
    }
    if (Number(eval(temp_lines)[temp_x][temp_y]) >= 76 && Number(eval(temp_lines)[temp_x][temp_y]) <= 80) 
    {
        _root.Now_key_flag = 0;
        _root.Display_text = 1;
        _root.CopyMovie("mt_other_03", "mt_display_text", 1410, 290, 150);
        if (Number(eval(temp_lines)[temp_x][temp_y]) === 76) 
        {
            _root.mt_display_text.MT.text = "得到 铁盾 防御加 10 ！";
            _root.Now_fang = _root.Now_fang + 10;
        }
        else if (Number(eval(temp_lines)[temp_x][temp_y]) === 77) 
        {
            _root.mt_display_text.MT.text = "得到 钢盾 防御加 30 ！";
            _root.Now_fang = _root.Now_fang + 30;
        }
        else if (Number(eval(temp_lines)[temp_x][temp_y]) === 78) 
        {
            _root.mt_display_text.MT.text = "得到 黄金盾 防御加 85 ！";
            _root.Now_fang = _root.Now_fang + 85;
        }
        else if (Number(eval(temp_lines)[temp_x][temp_y]) === 79) 
        {
            _root.mt_display_text.MT.text = "得到 星光盾 防御加 120 ！";
            _root.Now_fang = _root.Now_fang + 120;
        }
        else if (Number(eval(temp_lines)[temp_x][temp_y]) === 80) 
        {
            _root.mt_display_text.MT.text = "得到 光芒神盾 防御加 190 ！";
            _root.Now_fang = _root.Now_fang + 190;
        }
        _root.PlaySound("music_01");
        temp_names = "mt_m_" + temp_x + "_" + temp_y;
        _root.DelMovie(temp_names);
        eval(temp_lines)[temp_x][temp_y] = 0;
        _root.mt_Mylife.My_fang = _root.Now_fang;
    }
    if (Number(eval(temp_lines)[temp_x][temp_y]) == 36) 
    {
        _root.Now_key_flag = 0;
        _root.Display_text = 1;
        _root.CopyMovie("mt_other_03", "mt_display_text", 1410, 290, 150);
        _root.mt_display_text.MT.text = "得到 钥匙盒 各种钥匙数加 1 ！";
        _root.PlaySound("music_01");
        temp_names = "mt_m_" + temp_x + "_" + temp_y;
        _root.DelMovie(temp_names);
        eval(temp_lines)[temp_x][temp_y] = 0;
        _root.Now_yellow = _root.Now_yellow + 1;
        _root.Now_blue = _root.Now_blue + 1;
        _root.Now_red = _root.Now_red + 1;
        _root.mt_Mykey.Key_yellow = _root.Now_yellow;
        _root.mt_Mykey.Key_blue = _root.Now_blue;
        _root.mt_Mykey.Key_red = _root.Now_red;
    }
    if (Number(eval(temp_lines)[temp_x][temp_y]) == 39) 
    {
        _root.Now_key_flag = 0;
        _root.Display_text = 1;
        _root.CopyMovie("mt_other_03", "mt_display_text", 1410, 290, 150);
        _root.mt_display_text.MT.text = "得到 金块 金币数加 300 ！";
        _root.PlaySound("music_01");
        temp_names = "mt_m_" + temp_x + "_" + temp_y;
        _root.DelMovie(temp_names);
        eval(temp_lines)[temp_x][temp_y] = 0;
        _root.Now_money = _root.Now_money + 300;
        _root.mt_Mylife.My_money = _root.Now_money;
    }
    if (Number(eval(temp_lines)[temp_x][temp_y]) == 30) 
    {
        _root.Now_key_flag = 0;
        _root.Display_text = 1;
        _root.CopyMovie("mt_other_03", "mt_display_text", 1410, 290, 150);
        _root.mt_display_text.MT.text = "得到 小飞羽 等级提升一级 ！";
        _root.PlaySound("music_01");
        temp_names = "mt_m_" + temp_x + "_" + temp_y;
        _root.DelMovie(temp_names);
        eval(temp_lines)[temp_x][temp_y] = 0;
        _root.Now_life = _root.Now_life + 1;
        _root.Now_hp = _root.Now_hp + 1000;
        _root.Now_gong = _root.Now_gong + 10;
        _root.Now_fang = _root.Now_fang + 10;
        _root.mt_Mylife.My_live_id = _root.Now_life;
        _root.mt_Mylife.My_hp = _root.Now_hp;
        _root.mt_Mylife.My_gong = _root.Now_gong;
        _root.mt_Mylife.My_fang = _root.Now_fang;
    }
    if (Number(eval(temp_lines)[temp_x][temp_y]) == 31) 
    {
        _root.Now_key_flag = 0;
        _root.Display_text = 1;
        _root.CopyMovie("mt_other_03", "mt_display_text", 1410, 290, 150);
        _root.mt_display_text.MT.text = "得到 大飞羽 等级提升三级 ！";
        _root.PlaySound("music_01");
        temp_names = "mt_m_" + temp_x + "_" + temp_y;
        _root.DelMovie(temp_names);
        eval(temp_lines)[temp_x][temp_y] = 0;
        _root.Now_life = _root.Now_life + 3;
        _root.Now_hp = _root.Now_hp + 3000;
        _root.Now_gong = _root.Now_gong + 30;
        _root.Now_fang = _root.Now_fang + 30;
        _root.mt_Mylife.My_live_id = _root.Now_life;
        _root.mt_Mylife.My_hp = _root.Now_hp;
        _root.mt_Mylife.My_gong = _root.Now_gong;
        _root.mt_Mylife.My_fang = _root.Now_fang;
    }
    if (Number(eval(temp_lines)[temp_x][temp_y]) == 34) 
    {
        _root.Now_key_flag = 0;
        _root.Display_other = 1;
        _root.CopyMovie("mt_other_list", "mt_otherlist", 1370, 360, 207);
        _root.mt_otherlist.gotoAndStop(1);
        _root.PlaySound("music_04");
        temp_names = "mt_m_" + temp_x + "_" + temp_y;
        _root.DelMovie(temp_names);
        eval(temp_lines)[temp_x][temp_y] = 0;
    }
    if (Number(eval(temp_lines)[temp_x][temp_y]) == 32) 
    {
        _root.Now_key_flag = 0;
        _root.Display_other = 1;
        _root.CopyMovie("mt_other_list", "mt_otherlist", 1370, 360, 207);
        _root.mt_otherlist.gotoAndStop(4);
        _root.PlaySound("music_04");
        temp_names = "mt_m_" + temp_x + "_" + temp_y;
        _root.DelMovie(temp_names);
        eval(temp_lines)[temp_x][temp_y] = 0;
    }
    if (Number(eval(temp_lines)[temp_x][temp_y]) == 35) 
    {
        _root.Now_key_flag = 0;
        _root.Display_other = 1;
        _root.CopyMovie("mt_other_list", "mt_otherlist", 1370, 360, 207);
        _root.mt_otherlist.gotoAndStop(2);
        _root.PlaySound("music_04");
        temp_names = "mt_m_" + temp_x + "_" + temp_y;
        _root.DelMovie(temp_names);
        eval(temp_lines)[temp_x][temp_y] = 0;
    }
    if (Number(eval(temp_lines)[temp_x][temp_y]) == 33) 
    {
        _root.Now_key_flag = 0;
        _root.Display_other = 1;
        _root.CopyMovie("mt_other_list", "mt_otherlist", 1370, 360, 207);
        _root.mt_otherlist.gotoAndStop(6);
        _root.PlaySound("music_04");
        _root.Now_hp = _root.Now_hp * 2;
        _root.mt_Mylife.My_hp = _root.Now_hp;
        temp_names = "mt_m_" + temp_x + "_" + temp_y;
        _root.DelMovie(temp_names);
        eval(temp_lines)[temp_x][temp_y] = 0;
    }
    if (Number(eval(temp_lines)[temp_x][temp_y]) == 37) 
    {
        _root.Now_key_flag = 0;
        _root.Display_other = 1;
        _root.CopyMovie("mt_other_list", "mt_otherlist", 1370, 360, 207);
        _root.mt_otherlist.gotoAndStop(3);
        _root.PlaySound("music_04");
        temp_names = "mt_m_" + temp_x + "_" + temp_y;
        _root.DelMovie(temp_names);
        eval(temp_lines)[temp_x][temp_y] = 0;
    }
    if (Number(eval(temp_lines)[temp_x][temp_y]) == 38) 
    {
        _root.Now_key_flag = 0;
        _root.Display_other = 1;
        _root.CopyMovie("mt_other_list", "mt_otherlist", 1370, 360, 207);
        _root.mt_otherlist.gotoAndStop(5);
        _root.PlaySound("music_04");
        _root.big_clean = 1;
        temp_names = "mt_m_" + temp_x + "_" + temp_y;
        _root.DelMovie(temp_names);
        eval(temp_lines)[temp_x][temp_y] = 0;
    }
    if (Number(eval(temp_lines)[temp_x][temp_y]) == 22) 
    {
        _root.Now_key_flag = 0;
        _root.Display_buy = 1;
        _root.CopyMovie("mt_buy", "mt_buy_list", 1370, 380, 207);
        if (_root.Now_line == 3) 
        {
            _root.mt_buy_list.gotoAndStop(1);
        }
        else if (_root.Now_line == 11) 
        {
            _root.mt_buy_list.gotoAndStop(3);
        }
    }
    if (Number(eval(temp_lines)[temp_x][temp_y]) == 27) 
    {
        _root.Now_key_flag = 0;
        _root.Display_buy = 1;
        if (_root.Now_line == 2) 
        {
            _root.Now_key_flag = 0;
            _root.Display_say[1] = 1;
            _root.Last_x = temp_x;
            _root.Last_y = temp_y;
            _root.CopyMovie("mt_say_02", "mtsay_002", 1350, 380, 207);
        }
        else if (_root.Now_line == 5) 
        {
            _root.CopyMovie("mt_buy", "mt_buy_list", 1370, 400, 207);
            _root.mt_buy_list.gotoAndStop(4);
        }
        else if (_root.Now_line == 12) 
        {
            _root.CopyMovie("mt_buy", "mt_buy_list", 1370, 400, 207);
            _root.mt_buy_list.gotoAndStop(5);
        }
        else if (_root.Now_line == 15) 
        {
            _root.Now_key_flag = 0;
            _root.Display_say[1] = 1;
            _root.Last_x = temp_x;
            _root.Last_y = temp_y;
            _root.CopyMovie("mt_say_02", "mtsay_002", 1350, 380, 207);
            _root.mtsay_002.gotoAndPlay("say_two");
        }
    }
    if (Number(eval(temp_lines)[temp_x][temp_y]) == 26) 
    {
        _root.Now_key_flag = 0;
        _root.Display_buy = 1;
        if (_root.Now_line == 2) 
        {
            _root.Now_key_flag = 0;
            _root.Display_say[2] = 1;
            _root.Last_x = temp_x;
            _root.Last_y = temp_y;
            _root.CopyMovie("mt_say_03", "mtsay_003", 1350, 380, 207);
        }
        else if (_root.Now_line == 5) 
        {
            _root.CopyMovie("mt_buy", "mt_buy_list", 1370, 340, 207);
            _root.mt_buy_list.gotoAndStop(6);
        }
        else if (_root.Now_line == 13) 
        {
            _root.CopyMovie("mt_buy", "mt_buy_list", 1370, 400, 207);
            _root.mt_buy_list.gotoAndStop(7);
        }
        else if (_root.Now_line == 15) 
        {
            _root.Now_key_flag = 0;
            _root.Display_say[2] = 1;
            _root.Last_x = temp_x;
            _root.Last_y = temp_y;
            _root.CopyMovie("mt_say_03", "mtsay_003", 1350, 380, 207);
            _root.mtsay_003.gotoAndPlay("say_two");
        }
        else if (_root.Now_line == 16) 
        {
            _root.Now_key_flag = 0;
            _root.Display_say[2] = 1;
            _root.Last_x = temp_x;
            _root.Last_y = temp_y;
            _root.CopyMovie("mt_say_03", "mtsay_003", 1350, 380, 207);
            _root.mtsay_003.gotoAndPlay("say_three");
        }
    }
    if (Number(eval(temp_lines)[temp_x][temp_y]) == 115) 
    {
        _root.Now_key_flag = 0;
        _root.Open_room = 1;
        _root.PlaySound("music_07");
        temp_names = "mt_m_" + temp_x + "_" + temp_y;
        eval(temp_names).play();
        eval(temp_lines)[temp_x][temp_y] = 0;
        _root.Last_x = temp_x;
        _root.Last_y = temp_y;
    }
    if (Number(eval(temp_lines)[temp_x][temp_y]) == 25 && _root._root.Display_say[3] == 0) 
    {
        _root.Now_key_flag = 0;
        _root.Display_say[3] = 1;
        _root.CopyMovie("mt_say_04", "mtsay_004", 1350, 380, 207);
        _root.mtsay_004.gotoAndPlay(1);
        _root.mt_line_02[6][1] = 0;
    }
    if (Number(eval(temp_lines)[temp_x][temp_y]) == 25 && _root.big_clean == 1) 
    {
        _root.Now_key_flag = 0;
        _root.Display_say[3] = 1;
        _root.CopyMovie("mt_say_04", "mtsay_004", 1350, 380, 207);
        _root.mtsay_004.gotoAndPlay("say_two");
        _root.mt_line_18[8][5] = 0;
        _root.mt_line_18[9][5] = 0;
        _root.big_clean = 0;
    }
    if (Number(eval(temp_lines)[temp_x][temp_y]) >= 201 && _root.Number(eval(temp_lines)[temp_x][temp_y]) <= 203) 
    {
        _root.Now_key_flag = 0;
        _root.Display_text = 1;
        _root.CopyMovie("mt_other_03", "mt_display_text", 1410, 290, 150);
        if (eval(temp_lines)[temp_x][temp_y] === 201) 
        {
            _root.mt_display_text.MT.text = "得到 冰之灵杖 ！";
            _root.mt_GetMoney[0] = 1;
        }
        else if (eval(temp_lines)[temp_x][temp_y] === 202) 
        {
            _root.mt_display_text.MT.text = "得到 炎之灵杖 ! ";
            _root.mt_GetMoney[1] = 1;
        }
        else if (eval(temp_lines)[temp_x][temp_y] === 203) 
        {
            _root.mt_display_text.MT.text = "得到 心之灵杖 ！";
            _root.mt_GetMoney[2] = 1;
        }
        _root.PlaySound("music_01");
        temp_names = "mt_m_" + temp_x + "_" + temp_y;
        _root.DelMovie(temp_names);
        eval(temp_lines)[temp_x][temp_y] = 0;
    }
}
function SaveData()
{
    _root.Now_key_flag = 0;
    var i = 0;
    while (i <= 26) 
    {
        if (i < 10) 
        {
            save_tempstr = "_root.save_line_0" + i;
            load_tempstr = "_root.mt_line_0" + i;
        }
        else 
        {
            save_tempstr = "_root.save_line_" + i;
            load_tempstr = "_root.mt_line_" + i;
        }
        var j = 0;
        while (j < 11) 
        {
            var k = 0;
            while (k < 11) 
            {
                eval(save_tempstr)[j][k] = eval(load_tempstr)[j][k];
                ++k;
            }
            ++j;
        }
        ++i;
    }
    _root.save_Display_kill = Number(_root.Display_kill);
    _root.save_Display_buy = Number(_root.Display_buy);
    _root.save_Display_update = Number(_root.Display_update);
    var temp_i = 0;
    while (temp_i < _root.save_Display_say.length) 
    {
        _root.save_Display_say[temp_i] = Number(_root.Display_say[temp_i]);
        ++temp_i;
    }
    _root.save_Display_text = Number(_root.Display_text);
    _root.save_Display_list = Number(_root.Display_list);
    _root.save_Display_lines = Number(_root.Display_lines);
    _root.save_Display_other = Number(_root.Display_other);
    _root.save_Display_jump = Number(_root.Display_jump);
    _root.save_My_lifes_up = Number(_root.My_lifes_up);
    _root.save_My_lifes_down = Number(_root.My_lifes_down);
    _root.save_Open_room = Number(_root.Open_room);
    _root.save_Now_line = Number(_root.Now_line);
    _root.save_Now_xid = Number(_root.Now_xid);
    _root.save_Now_yid = Number(_root.Now_yid);
    _root.save_list_flag = Number(_root.list_flag);
    _root.save_clean_flag = Number(_root.clean_flag);
    _root.save_jump_flag = Number(_root.jump_flag);
    _root.save_my_love = Number(_root.my_love);
    _root.save_big_clean = Number(_root.big_clean);
    _root.save_Max_line = Number(_root.Max_line);
    _root.save_Now_life = Number(_root.Now_life);
    _root.save_Now_hp = Number(_root.Now_hp);
    _root.save_Now_gong = Number(_root.Now_gong);
    _root.save_Now_fang = Number(_root.Now_fang);
    _root.save_Now_money = Number(_root.Now_money);
    _root.save_Now_yellow = Number(_root.Now_yellow);
    _root.save_Now_blue = Number(_root.Now_blue);
    _root.save_Now_red = Number(_root.Now_red);
    _root.save_Now_mp = Number(_root.Now_mp);
    _root.save_Last_x = Number(_root.Last_x);
    _root.save_Last_y = Number(_root.Last_y);
    _root.save_Now_boss_id = Number(_root.Now_boss_id);
    _root.save_Now_boss_x = Number(_root.Now_boss_x);
    _root.save_Now_boss_y = Number(_root.Now_boss_y);
    _root.save_mt_temp_x = Number(_root.mt_temp_x);
    _root.save_mt_temp_y = Number(_root.mt_temp_y);
    _root.save_Set_man_01 = Number(_root.Set_man_01);
    _root.save_Set_man_02 = Number(_root.Set_man_02);
    _root.save_Display_kills = Number(_root.Display_kills);
    _root.save_mt_LastGame_ID = Number(_root.mt_LastGame_ID);
    _root.save_mt_GetMoney[0] = Number(_root.mt_GetMoney[0]);
    _root.save_mt_GetMoney[1] = Number(_root.mt_GetMoney[1]);
    _root.save_mt_GetMoney[2] = Number(_root.mt_GetMoney[2]);
    _root.save_mt_runline = Number(_root.mt_runline);
    _root.save_NowGameTime = Number(_root.NowGameTime);
    _root.save_TimeRunId = Number(_root.TimeRunId);
    _root.save_mt_changes = Number(_root.mt_changes);
    var temp_j = 0;
    while (temp_j < _root.save_boss_man.length) 
    {
        var temp_k = 0;
        while (temp_k < 5) 
        {
            _root.save_boss_man[temp_j][temp_k] = Number(_root.boss_man[temp_j][temp_k]);
            ++temp_k;
        }
        ++temp_j;
    }
    _root.Now_key_flag = 0;
    _root.Display_text = 1;
    _root.CopyMovie("mt_other_03", "mt_display_text", 1410, 290, 150);
    _root.mt_display_text.MT.text = "保存数据成功 ！";
    _root.PlaySound("music_21");
    _root.Now_key_flag = 1;
}
function LoadData()
{
    _root.Now_key_flag = 0;
    var i = 0;
    while (i <= 26) 
    {
        if (i < 10) 
        {
            save_tempstr = "_root.save_line_0" + i;
            load_tempstr = "_root.mt_line_0" + i;
        }
        else 
        {
            save_tempstr = "_root.save_line_" + i;
            load_tempstr = "_root.mt_line_" + i;
        }
        var j = 0;
        while (j < 11) 
        {
            var k = 0;
            while (k < 11) 
            {
                eval(load_tempstr)[j][k] = eval(save_tempstr)[j][k];
                ++k;
            }
            ++j;
        }
        ++i;
    }
    _root.Display_kill = Number(_root.save_Display_kill);
    _root.Display_buy = Number(_root.save_Display_buy);
    _root.Display_update = Number(_root.save_Display_update);
    var temp_i = 0;
    while (temp_i < _root.save_Display_say.length) 
    {
        _root.Display_say[temp_i] = Number(_root.save_Display_say[temp_i]);
        ++temp_i;
    }
    _root.Display_text = Number(_root.save_Display_text);
    _root.Display_list = Number(_root.save_Display_list);
    _root.Display_lines = Number(_root.save_Display_lines);
    _root.Display_other = Number(_root.save_Display_other);
    _root.Display_jump = Number(_root.save_Display_jump);
    _root.My_lifes_up = Number(_root.save_My_lifes_up);
    _root.My_lifes_down = Number(_root.save_My_lifes_down);
    _root.Open_room = Number(_root.save_Open_room);
    _root.StartGameTime = Number(_root.StartGameTime + _root.NowGameTime - _root.save_NowGameTime);
    _root.Now_line = Number(_root.save_Now_line);
    _root.Now_xid = Number(_root.save_Now_xid);
    _root.Now_yid = Number(_root.save_Now_yid);
    _root.list_flag = Number(_root.save_list_flag);
    _root.clean_flag = Number(_root.save_clean_flag);
    _root.jump_flag = Number(_root.save_jump_flag);
    _root.my_love = Number(_root.save_my_love);
    _root.big_clean = Number(_root.save_big_clean);
    _root.Max_line = Number(_root.save_Max_line);
    _root.Now_life = Number(_root.save_Now_life);
    _root.Now_hp = Number(_root.save_Now_hp);
    _root.Now_gong = Number(_root.save_Now_gong);
    _root.Now_fang = Number(_root.save_Now_fang);
    _root.Now_money = Number(_root.save_Now_money);
    _root.Now_yellow = Number(_root.save_Now_yellow);
    _root.Now_blue = Number(_root.save_Now_blue);
    _root.Now_red = Number(_root.save_Now_red);
    _root.Now_mp = Number(_root.save_Now_mp);
    _root.Last_x = Number(_root.save_Last_x);
    _root.Last_y = Number(_root.save_Last_y);
    _root.Now_boss_id = Number(_root.save_Now_boss_id);
    _root.Now_boss_x = Number(_root.save_Now_boss_x);
    _root.Now_boss_y = Number(_root.save_Now_boss_y);
    _root.mt_temp_x = Number(_root.save_mt_temp_x);
    _root.mt_temp_y = Number(_root.save_mt_temp_y);
    _root.Set_man_01 = Number(_root.save_Set_man_01);
    _root.Set_man_02 = Number(_root.save_Set_man_02);
    _root.Display_kills = Number(_root.save_Display_kills);
    _root.mt_LastGame_ID = Number(_root.save_mt_LastGame_ID);
    _root.mt_GetMoney[0] = Number(_root.save_mt_GetMoney[0]);
    _root.mt_GetMoney[1] = Number(_root.save_mt_GetMoney[1]);
    _root.mt_GetMoney[2] = Number(_root.save_mt_GetMoney[2]);
    _root.mt_runline = Number(_root.save_mt_runline);
    _root.NowGameTime = Number(_root.save_NowGameTime);
    _root.TimeRunId = Number(_root.save_TimeRunId);
    _root.mt_Mylife.My_live_id = Number(_root.Now_life);
    _root.mt_Mylife.My_hp = Number(_root.Now_hp);
    _root.mt_Mylife.My_gong = Number(_root.Now_gong);
    _root.mt_Mylife.My_fang = Number(_root.Now_fang);
    _root.mt_Mylife.My_money = Number(_root.Now_money);
    _root.mt_Mylife.My_mp = Number(_root.Now_mp);
    _root.mt_Mykey.Key_yellow = Number(_root.Now_yellow);
    _root.mt_Mykey.Key_blue = Number(_root.Now_blue);
    _root.mt_Mykey.Key_red = Number(_root.Now_red);
    _root.mt_changes = Number(_root.save_mt_changes);
    var temp_j = 0;
    while (temp_j < _root.boss_man.length) 
    {
        var temp_k = 0;
        while (temp_k < 5) 
        {
            _root.boss_man[temp_j][temp_k] = Number(_root.save_boss_man[temp_j][temp_k]);
            ++temp_k;
        }
        ++temp_j;
    }
    _root.Now_key_flag = 0;
    _root.Display_text = 1;
    _root.CopyMovie("mt_other_03", "mt_display_text", 1410, 290, 150);
    _root.mt_display_text.MT.text = "读取数据成功 ！";
    _root.PlaySound("music_21");
    _root.Now_key_flag = 1;
}

