private ["_xpos", "_ypos", "_blast_time", "_radius", "_all_radius", "_current_radius",
         "_v", "_distance", "_radiation", "_sleep", "_count", "_random","_finalText","_radi10pic"];

_xpos = _this select 0;
_ypos = _this select 1;
_blast_time = _this select 2;

_all_radius = strahlungs_radius * 1.3;
_radius = _all_radius;
_v = _radius / (2 * strahlung_lebenszeit);
_radi10pic = "\panda_syndicate\panda_data\data\icons\256_radio2_r.paa";

while {_radius > 1} do
{
  _current_radius = _radius - (time - _blast_time) * _v;
  _distance = [_xpos, _ypos] distance player;  
  _sleep = 1;
  if ( _distance < _current_radius ) then
  {
    _radiation = (1 - _distance / _current_radius) * _current_radius / _all_radius;
	//_radiation = (1 - _distance / _current_radius) * _current_radius / _all_radius;//round it
    if ( vehicle player != player ) then {_radiation = strahlung_schaden_kfz * _radiation};
    _sleep = 4;
    _count = _radiation * 10;
    for "_x" from 0 to _count do
    {
		_finalText = format ["<t size='0.75' color='#ff0000' align='right'>%1<br /></t><t size='0.6' color='#ffffff' align='right'>µSv/h<br /></t>", _radiation];
		playsound ["snd_geigerclick001", true];['<img align=''right'' size=''1.8'' shadow=''1'' image='+(str(_radi10pic))+' />',[safezoneX + safezoneW - 0.68,0.48],[safezoneY + safezoneH - 0.8,0.7],1,0,0,3091] spawn bis_fnc_dynamicText;
		[_finalText,[safezoneX + safezoneW - 0.55,0.48],[safezoneY + safezoneH - 0.78,0.7],1,0,0,3100] spawn BIS_fnc_dynamicText;
		//oben new unten alt
		//playsound "snd_geigerclick001";
      _random = (1.2 * random 1) / 10;
      _sleep = _sleep - _random;
      sleep _random;
    };
  };
  sleep _sleep;
  if ( (time - _blast_time) > strahlung_lebenszeit ) then
  {
    _radius = _radius / 2;
    _blast_time = _blast_time + strahlung_lebenszeit;
    _v = _radius / (2 * strahlung_lebenszeit);
  };
};