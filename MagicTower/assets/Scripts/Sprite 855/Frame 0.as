//Frame 0
//  Action tag #0

if (_root.Display_text == 2) 
{
    _root.DelMovie("_root.mt_display_text");
    _root.Display_text = 0;
    if (Number(_root.mt_line_26[3][5]) == 0) 
    {
        _root.DelBaseDisplay();
        _root.DelLineDisplay();
        _root.gotoAndPlay("game_over");
    }
}
if (_root.Display_other == 2) 
{
    _root.DelMovie("_root.mt_otherlist");
    _root.Display_other = 0;
}
if (_root.Display_buy == 2) 
{
    _root.DelMovie("_root.mt_buy_list");
    _root.Display_buy = 0;
}
if (_root.Open_room == 2) 
{
    temp_name = "_root.mt_m_" + _root.Last_x + "_" + _root.Last_y;
    _root.DelMovie(temp_name);
    _root.Open_room = 0;
    _root.Now_key_flag = 1;
}
if (_root.Display_kill == 2) 
{
    _root.DelMovie("mt_kills");
    _root.DelMovie("mt_kills_left");
    _root.DelMovie("mt_kills_right");
    _root.Display_kill = 0;
    _root.Move_arrow(100);
}
if (_root.Display_lines == 1) 
{
    gotoAndPlay(3);
}
else if (_root.Display_lines == 2) 
{
    gotoAndPlay(5);
}
if (_root.Display_say[0] == 2) 
{
    _root.DelMovie("mtsay_001");
    _root.mt_sister._x = _root.mt_sister._x - 32;
    _root.mt_line_00[_root.mt_man_x][_root.mt_man_y] = 0;
    _root.mt_line_00[_root.mt_man_x][_root.mt_man_y - 1] = 24;
    _root.PlaySound("music_03");
    _root.Now_yellow = _root.Now_yellow + 1;
    _root.Now_blue = _root.Now_blue + 1;
    _root.Now_red = _root.Now_red + 1;
    _root.mt_Mykey.Key_yellow = _root.Now_yellow;
    _root.mt_Mykey.Key_blue = _root.Now_blue;
    _root.mt_Mykey.Key_red = _root.Now_red;
    _root.Display_say[0] = 3;
    _root.Now_key_flag = 1;
}
if (_root.Display_say[0] == 6 || _root.Display_say[0] == 10 || _root.Display_say[0] == 12 || _root.Display_say[0] == 14) 
{
    _root.DelMovie("mtsay_001");
    _root.PlaySound("music_03");
    if (_root.Display_say[0] == 12) 
    {
        _root.open_last_door = 1;
    }
    _root.Display_say[0] = _root.Display_say[0] + 1;
    _root.Now_key_flag = 1;
}
if (_root.Display_say[0] == 4 || _root.Display_say[0] == 8) 
{
    _root.DelMovie("mtsay_001");
    _root.DelMovie("mt_sister");
    _root.mt_line_00[_root.mt_man_x][_root.mt_man_y] = 0;
    _root.PlaySound("music_03");
    _root.Now_hp = _root.Now_hp + int(_root.Now_hp / 3);
    _root.Now_gong = _root.Now_gong + int(_root.Now_gong / 3);
    _root.Now_fang = _root.Now_fang + int(_root.Now_fang / 3);
    _root.mt_Mylife.My_hp = _root.Now_hp;
    _root.mt_Mylife.My_gong = _root.Now_gong;
    _root.mt_Mylife.My_fang = _root.Now_fang;
    _root.Display_say[0] = _root.Display_say[0] + 1;
    _root.Now_key_flag = 1;
}
if (_root.Display_say[0] == 6) 
{
    _root.DelMovie("mtsay_001");
    _root.Now_key_flag = 0;
    _root.Display_text = 1;
    _root.CopyMovie("mt_other_03", "mt_display_text", 1410, 290, 150);
    _root.mt_display_text.MT.text = "得到 冰之灵杖 ！";
    _root.GetMoney[0] = 1;
    _root.PlaySound("music_03");
    _root.Display_say[0] = 7;
    _root.Now_key_flag = 1;
}
if (_root.Display_say[1] == 2) 
{
    _root.DelMovie("mtsay_002");
    _root.Now_key_flag = 0;
    _root.Display_text = 1;
    _root.CopyMovie("mt_other_03", "mt_display_text", 1410, 290, 150);
    _root.mt_display_text.MT.text = "得到 钢盾 防御加 30 ！";
    _root.Now_fang = _root.Now_fang + 30;
    _root.mt_Mylife.My_fang = _root.Now_fang;
    _root.PlaySound("music_03");
    _root.Display_say[1] = 3;
    _root.Now_key_flag = 1;
}
if (_root.Display_say[2] == 2) 
{
    _root.DelMovie("mtsay_003");
    _root.Now_key_flag = 0;
    _root.Display_text = 1;
    _root.CopyMovie("mt_other_03", "mt_display_text", 1410, 290, 150);
    _root.mt_display_text.MT.text = "得到 钢剑 攻击加 30 ！";
    _root.Now_gong = _root.Now_gong + 70;
    _root.mt_Mylife.My_gong = _root.Now_gong;
    _root.PlaySound("music_03");
    _root.Display_say[2] = 3;
    _root.Now_key_flag = 1;
}
if (_root.Display_say[1] == 4) 
{
    _root.DelMovie("mtsay_002");
    _root.Now_key_flag = 0;
    _root.Display_text = 1;
    _root.CopyMovie("mt_other_03", "mt_display_text", 1410, 290, 150);
    _root.mt_display_text.MT.text = "得到 星光盾 防御加 120 ！";
    _root.Now_fang = _root.Now_fang + 120;
    _root.Now_money = _root.Now_money - 500;
    _root.mt_Mylife.My_fang = _root.Now_fang;
    _root.mt_Mylife.My_money = _root.Now_money;
    _root.PlaySound("music_03");
    _root.Display_say[1] = 5;
    _root.Now_key_flag = 1;
}
if (_root.Display_say[2] == 4) 
{
    _root.DelMovie("mtsay_003");
    _root.Now_key_flag = 0;
    _root.Display_text = 1;
    _root.CopyMovie("mt_other_03", "mt_display_text", 1410, 290, 150);
    _root.mt_display_text.MT.text = "得到 圣光剑 攻击加 120 ！";
    _root.Now_gong = _root.Now_gong + 120;
    _root.Now_mp = _root.Now_mp - 500;
    _root.mt_Mylife.My_gong = _root.Now_gong;
    _root.mt_Mylife.My_mp = _root.Now_mp;
    _root.PlaySound("music_03");
    _root.Display_say[2] = 5;
    _root.Now_key_flag = 1;
}
if (_root.Display_say[2] == 6) 
{
    _root.DelMovie("mtsay_003");
    _root.Now_key_flag = 0;
    _root.Display_text = 1;
    _root.CopyMovie("mt_other_03", "mt_display_text", 1410, 290, 150);
    _root.mt_display_text.MT.text = "得到 神秘宝物 ！";
    _root.PlaySound("music_03");
    _root.Display_say[2] = 7;
    _root.Now_key_flag = 1;
    _root.mt_changes = 1;
}
if (_root.Display_say[3] == 2) 
{
    _root.DelMovie("mtsay_004");
    _root.Display_say[3] = 3;
    _root.Now_key_flag = 1;
}
if (_root.Display_say[6] == 2) 
{
    _root.DelMovie("mtsay_006");
    _root.Display_say[6] = 3;
    _root.Now_key_flag = 1;
}
if (_root.Display_say[7] == 2) 
{
    _root.DelMovie("mtsay_007");
    _root.Display_say[7] = 3;
    _root.Now_key_flag = 1;
}
if (_root.Display_say[8] == 2) 
{
    _root.DelMovie("mtsay_008");
    _root.Display_say[8] = 3;
    _root.Now_key_flag = 1;
}
if (_root.Display_say[8] == 5) 
{
    _root.DelMovie("mtsay_008");
    _root.Display_say[8] = 6;
    _root.Now_key_flag = 1;
}
if (_root.Display_say[8] == 9) 
{
    _root.DelMovie("mtsay_008");
    _root.Display_say[8] = 10;
    _root.Now_key_flag = 1;
    if (_root.mt_LastGame_ID == 0) 
    {
        _root.DelBaseDisplay();
        _root.DelLineDisplay();
        _root.gotoAndPlay("game_over");
    }
    if (_root.mt_LastGame_ID == 1) 
    {
        _root.mt_line_21[1][5] = 13;
        _root.mt_line_21[2][5] = 98;
        _root.mt_line_21[6][5] = 0;
        _root.CopyMovie("mt_13", "mt_m_1_5", 5527, 367, 79);
        _root.DelMovie("mt_m_6_5");
    }
}
if (_root.Display_say[3] == 4) 
{
    _root.DelMovie("mtsay_004");
    _root.Display_say[3] = 5;
    _root.Now_key_flag = 1;
}
if (_root.Display_list == 1) 
{
    tmp_list = new Array(15);
    tmp_max = 0;
    add_list = 1;
    change_hp = 1;
    i = 0;
    while (i < 11) 
    {
        j = 0;
        while (j < 11) 
        {
            if (add_list == 0) 
            {
                add_list = 1;
            }
            if (_root.Now_line < 10) 
            {
                temp_num = "_root.mt_line_0" + _root.Now_line;
            }
            else 
            {
                temp_num = "_root.mt_line_" + _root.Now_line;
            }
            if ((Number(eval(temp_num)[i][j]) >= 40 && Number(eval(temp_num)[i][j]) <= 70) || Number(eval(temp_num)[i][j]) == 188 || Number(eval(temp_num)[i][j]) == 198) 
            {
                if (tmp_max > 0) 
                {
                    k = 0;
                    while (k < tmp_max) 
                    {
                        if (Number(eval(temp_num)[i][j]) == tmp_list[k]) 
                        {
                            add_list = 0;
                        }
                        ++k;
                    }
                }
                if (add_list == 1) 
                {
                    if (Number(eval(temp_num)[i][j]) == 188) 
                    {
                        tmp_list[tmp_max] = 71;
                    }
                    else if (Number(eval(temp_num)[i][j]) == 198) 
                    {
                        tmp_list[tmp_max] = 72;
                    }
                    else 
                    {
                        tmp_list[tmp_max] = Number(eval(temp_num)[i][j]);
                    }
                    ++tmp_max;
                }
            }
            ++j;
        }
        ++i;
    }
    if (tmp_max == 0) 
    {
        _root.Play_sound("music_08");
        _root.DelMovie("mt_boss_list");
        _root.Display_list = 0;
        _root.Now_key_flag = 1;
    }
    else 
    {
        _root.mt_boss_list.gotoAndStop(tmp_max + 1);
        _root.Now_key_flag = 0;
        k = 0;
        while (k < tmp_max) 
        {
            set("_root.mt_boss_list.name_0" + (k + 1), _root.boss_man[tmp_list[k] - 40][5]);
            set("_root.mt_boss_list.hp_0" + (k + 1), _root.boss_man[tmp_list[k] - 40][0]);
            set("_root.mt_boss_list.gong_0" + (k + 1), _root.boss_man[tmp_list[k] - 40][1]);
            set("_root.mt_boss_list.fang_0" + (k + 1), _root.boss_man[tmp_list[k] - 40][2]);
            set("_root.mt_boss_list.money_0" + (k + 1), _root.boss_man[tmp_list[k] - 40][3] + "·" + _root.boss_man[tmp_list[k] - 40][4]);
            if (_root.Now_fang >= _root.boss_man[tmp_list[k] - 40][1] && _root.Now_gong > _root.boss_man[tmp_list[k] - 40][2]) 
            {
                set("_root.mt_boss_list.other_0" + (k + 1), 0);
                change_hp = 1;
            }
            else if (_root.boss_man[tmp_list[k] - 40][2] >= _root.Now_gong || (_root.Now_fang >= _root.boss_man[tmp_list[k] - 40][1] && _root.Now_gong <= _root.boss_man[tmp_list[k] - 40][2])) 
            {
                set("_root.mt_boss_list.other_0" + (k + 1), "???");
                change_hp = 0;
            }
            else 
            {
                set("_root.mt_boss_list.other_0" + (k + 1), int(_root.boss_man[tmp_list[k] - 40][0] / (_root.Now_gong - _root.boss_man[tmp_list[k] - 40][2])) * (_root.boss_man[tmp_list[k] - 40][1] - _root.Now_fang));
                change_hp = 1;
            }
            if (tmp_list[k] == 71) 
            {
                _root.CopyMovie("mt_188", "mt_list_188", 1471 + k, 367 + eval("_root.mt_boss_list.face_0" + (k + 1))._x, 207 + eval("_root.mt_boss_list.face_0" + (k + 1))._y);
            }
            else if (tmp_list[k] == 72) 
            {
                _root.CopyMovie("mt_198", "mt_list_198", 1471 + k, 367 + eval("_root.mt_boss_list.face_0" + (k + 1))._x, 207 + eval("_root.mt_boss_list.face_0" + (k + 1))._y);
            }
            else 
            {
                _root.CopyMovie("mt_" + tmp_list[k], "mt_list_" + tmp_list[k], 1471 + k, 367 + eval("_root.mt_boss_list.face_0" + (k + 1))._x, 207 + eval("_root.mt_boss_list.face_0" + (k + 1))._y);
            }
            if (change_hp == 1) 
            {
                if (tmp_list[k] === 60) 
                {
                    set("_root.mt_boss_list.other_0" + (k + 1), eval("_root.mt_boss_list.other_0" + (k + 1)) + 100);
                }
                else if (tmp_list[k] === 52) 
                {
                    set("_root.mt_boss_list.other_0" + (k + 1), eval("_root.mt_boss_list.other_0" + (k + 1)) + 300);
                }
                else if (tmp_list[k] === 50) 
                {
                    set("_root.mt_boss_list.other_0" + (k + 1), eval("_root.mt_boss_list.other_0" + (k + 1)) + int(_root.Now_hp / 4));
                }
                else if (tmp_list[k] === 57) 
                {
                    set("_root.mt_boss_list.other_0" + (k + 1), eval("_root.mt_boss_list.other_0" + (k + 1)) + int(_root.Now_hp / 3));
                }
            }
            ++k;
        }
        _root.Display_list = 2;
    }
}
if (_root.Display_list == 3) 
{
    tmp_list = new Array(15);
    tmp_max = 0;
    add_list = 1;
    i = 0;
    while (i < 11) 
    {
        j = 0;
        while (j < 11) 
        {
            if (add_list == 0) 
            {
                add_list = 1;
            }
            if (_root.Now_line < 10) 
            {
                temp_num = "_root.mt_line_0" + _root.Now_line;
            }
            else 
            {
                temp_num = "_root.mt_line_" + _root.Now_line;
            }
            if ((Number(eval(temp_num)[i][j]) >= 40 && Number(eval(temp_num)[i][j]) <= 70) || Number(eval(temp_num)[i][j]) == 188 || Number(eval(temp_num)[i][j]) == 198) 
            {
                if (tmp_max > 0) 
                {
                    k = 0;
                    while (k < tmp_max) 
                    {
                        if (Number(eval(temp_num)[i][j]) == tmp_list[k]) 
                        {
                            add_list = 0;
                        }
                        ++k;
                    }
                }
                if (add_list == 1) 
                {
                    if (Number(eval(temp_num)[i][j]) == 188) 
                    {
                        tmp_list[tmp_max] = 71;
                    }
                    else if (Number(eval(temp_num)[i][j]) == 198) 
                    {
                        tmp_list[tmp_max] = 72;
                    }
                    else 
                    {
                        tmp_list[tmp_max] = Number(eval(temp_num)[i][j]);
                    }
                    ++tmp_max;
                }
            }
            ++j;
        }
        ++i;
    }
    k = 0;
    while (k < tmp_max) 
    {
        if (tmp_list[k] == 71) 
        {
            _root.DelMovie("_root.mt_list_188");
        }
        else if (tmp_list[k] == 72) 
        {
            _root.DelMovie("_root.mt_list_198");
        }
        else 
        {
            _root.DelMovie("_root.mt_list_" + tmp_list[k]);
        }
        ++k;
    }
    _root.DelMovie("mt_boss_list");
    _root.Now_key_flag = 1;
    _root.Display_list = 0;
}
if (_root.Display_jump == 2) 
{
    _root.DelMovie("_root.mt_line_jump");
    _root.SetLineDisplay(1);
    _root.Display_jump = 0;
    _root.Now_key_flag = 0;
}
if (_root.Display_jump == 4) 
{
    _root.DelMovie("_root.mt_line_jump");
    _root.Display_jump = 0;
    _root.Now_key_flag = 1;
}
if (Number(_root.mt_line_16[5][5]) == 0 && _root.Set_man_01 == 0) 
{
    var new_array = new Array(13, 17, 18, 22);
    var pp = 0;
    while (pp < new_array.length) 
    {
        _root.boss_man[new_array[pp]][0] = _root.boss_man[new_array[pp]][0] + int(_root.boss_man[new_array[pp]][0] / 3);
        _root.boss_man[new_array[pp]][1] = _root.boss_man[new_array[pp]][1] + int(_root.boss_man[new_array[pp]][1] / 3);
        _root.boss_man[new_array[pp]][2] = _root.boss_man[new_array[pp]][2] + int(_root.boss_man[new_array[pp]][2] / 3);
        _root.boss_man[new_array[pp]][3] = _root.boss_man[new_array[pp]][3] + int(_root.boss_man[new_array[pp]][3] / 3);
        _root.boss_man[new_array[pp]][4] = _root.boss_man[new_array[pp]][4] + int(_root.boss_man[new_array[pp]][4] / 3);
        ++pp;
    }
    _root.Set_man_01 = 1;
}
if (Number(_root.mt_line_19[6][5]) == 0 && _root.Set_man_02 == 0) 
{
    _root.Set_man_02 = 1;
    _root.boss_man[19][0] = _root.boss_man[19][0] + int(_root.boss_man[19][0] / 2);
    _root.boss_man[19][1] = _root.boss_man[19][1] + int(_root.boss_man[19][1] / 2);
    _root.boss_man[19][2] = _root.boss_man[19][2] + int(_root.boss_man[19][2] / 2);
    _root.boss_man[19][3] = _root.boss_man[19][3] + int(_root.boss_man[19][3] / 4);
    _root.boss_man[19][4] = _root.boss_man[19][4] + int(_root.boss_man[19][4] / 4);
    _root.Now_key_flag = 0;
    _root.Display_say[8] = 1;
    _root.CopyMovie("mt_say_08", "mtsay_008", 1350, 380, 207);
    _root.mtsay_008.gotoAndPlay("say_two");
}
if (Number(_root.mt_line_21[1][5]) == 0 && _root.Display_kills == 0) 
{
    var new_array = new Array(13, 17, 18, 22);
    var pp = 0;
    while (pp < new_array.length) 
    {
        _root.boss_man[new_array[pp]][0] = _root.boss_man[new_array[pp]][0] + int(_root.boss_man[new_array[pp]][0] / 2);
        _root.boss_man[new_array[pp]][1] = _root.boss_man[new_array[pp]][1] + int(_root.boss_man[new_array[pp]][1]);
        _root.boss_man[new_array[pp]][2] = _root.boss_man[new_array[pp]][2] + int(_root.boss_man[new_array[pp]][2]);
        _root.boss_man[new_array[pp]][3] = _root.boss_man[new_array[pp]][3] + int(_root.boss_man[new_array[pp]][3] / 4);
        _root.boss_man[new_array[pp]][4] = _root.boss_man[new_array[pp]][4] + int(_root.boss_man[new_array[pp]][4] / 4);
        ++pp;
    }
    _root.boss_man[19][0] = _root.boss_man[19][0] + int(_root.boss_man[19][0] / 3);
    _root.boss_man[19][1] = _root.boss_man[19][1] + int(_root.boss_man[19][1] / 3);
    _root.boss_man[19][2] = _root.boss_man[19][2] + int(_root.boss_man[19][2] / 3);
    _root.boss_man[19][3] = _root.boss_man[19][3] + int(_root.boss_man[19][3] / 4);
    _root.boss_man[19][4] = _root.boss_man[19][4] + int(_root.boss_man[19][4] / 4);
    _root.Now_key_flag = 0;
    _root.Display_say[8] = 1;
    _root.CopyMovie("mt_say_08", "mtsay_008", 1350, 380, 207);
    _root.mtsay_008.gotoAndPlay("say_three");
    _root.Display_kills = 1;
}
if (_root.TimeRunID == true) 
{
    _root.NowTimes = new Date();
    _root.NowGameTime = _root.NowTimes.getHours() * 3600 + _root.NowTimes.getMinutes() * 60 + _root.NowTimes.getSeconds() - _root.StartGameTime;
}
if (_root.NowGameTime >= 1500) 
{
    if (_root.TimeRunID == true) 
    {
        _root.TimeRunID = false;
        _root.mt_line_16[4][4] = 1;
    }
}

