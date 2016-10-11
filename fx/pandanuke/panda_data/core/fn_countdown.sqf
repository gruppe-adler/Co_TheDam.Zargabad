/*
Atom-Modul
funktion:
anordnung:
betatest 2014:

bugs:

*/
//_pos = _this select 0;
_t = _this select 0;
prelaunch = _this select 2;

_s = 0; _zh = 0;
_m = 0; _zm = 0;
_h = 0; _zs = 0;
_earlier = false;

if (_t < 60) then
    {
    _s = _t;
    };

if (_t >= 60) then
    {
    _m = floor(_t / 60);
    _s = _t - 60*_m;
    if (_m >= 60) then
        {
        _h = floor(_m / 60);
        _m = _m - 60*_h;
        };
    };

if (_h < 10) then {_zh = "0";} else {_zh = "";};
if (_m < 10) then {_zm = "0";} else {_zm = "";};
if (_s < 10) then {_zs = "0";} else {_zs = "";};

hintSilent parseText format ["<t color='#ff3300' size='2.0' shadow='1' shadowColor='#000000' align='center'>%1%2:%3%4:%5%6</t>",_zh,_h,_zm,_m,_zs,_s];

while {_t > 0} do
{
    if (_s == 0) then
    {
        _s = 60;
        _m = _m - 1;
        if (_m <= 0 and _h > 0) then {_m = 59; _h = _h - 1;};
    };

    _s = _s - 1;
    _t = _t - 1;

    if (_h < 10) then {_zh = "0";} else {_zh = "";};
    if (_m < 10) then {_zm = "0";} else {_zm = "";};
    if (_s < 10) then {_zs = "0";} else {_zs = "";};

    sleep 1;
    hintSilent parseText format ["<t color='#ff3300' size='2.0' shadow='1' shadowColor='#000000' align='center'>%1%2:%3%4:%5%6</t>",_zh,_h,_zm,_m,_zs,_s];

// random launch of Nuke earlier than after countdown    
    _trig = random ceil 80;
    if (_t < 10 and _trig > 0 and _trig < 3 and !_earlier and prelaunch) then
    {
    //nul = [_pos] execvm "\panda_syndicate\panda_data\defcons\003\nuke.sqf";
    _earlier = true; _t = 0;
    };
//---------------------------------------------------    
};

delay = ceil random 5;

while { _t < delay} do {
hintSilent parseText format ["<t color='#ff3300' size='2.0' shadow='1' shadowColor='#000000' align='center'>%1%2:%3%4:%5%6</t>",_zh,_h,_zm,_m,_zs,_s];
sleep 0.2;
hintSilent parseText format ["<t color='#ffaa00' size='2.0' shadow='1' shadowColor='#000000' align='center'>%1%2:%3%4:%5%6</t>",_zh,_h,_zm,_m,_zs,_s];
sleep 0.2;
_t = _t + 0.4;
};

if (!_earlier) then {
hint "go"; //exitwith {}; //[_pos] spawn NukePreLoad;
}; 