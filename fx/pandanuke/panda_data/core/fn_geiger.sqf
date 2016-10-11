/*
Atom-Modul
funktion:
anordnung:
betatest 2014:

bugs:

*/
private ["_object", "_radius", "_rad1", "_rad2", "_rad3","_radunit","_radunita","_radunitb","_radi10pic"];

_object = _this select 0;
_radius = _this select 1;
_rad1 = _radius;
_rad2 = _radius / 2;
_rad3 = _radius / 4;


_radi30pic = "\panda_syndicate\panda_data\data\icons\256_radio2_w.paa";
_radi20pic = "\panda_syndicate\panda_data\data\icons\256_radio2_y.paa";
_radi10pic = "\panda_syndicate\panda_data\data\icons\256_radio2_r.paa";



while { alive _object } do
{
  waituntil { player distance _object < _rad1 || ! alive _object };
	_radunit = player distance _object;
		_radunita = _radunit + (random 2);
	_radunitb = round (_rad1 - _radunita)/ (10 ^ 2); //µSv/h;
	_finalText = format ["<t size='0.75' color='#ff0000' align='right'>%1<br /></t><t size='0.6' color='#ffffff' align='right'>µSv/h<br /></t>", _radunitb];

  if ( player distance _object < _rad1 ) then
  {
    if ( player distance _object < _rad2 ) then
    {
      if ( player distance _object < _rad3 )
		then {playsound ["snd_geigerclick003", true];['<img align=''right'' size=''1.8'' shadow=''1'' image='+(str(_radi10pic))+' />',[safezoneX + safezoneW - 0.62,0.48],[safezoneY + safezoneH - 0.8,0.7],1,0,0,3099] spawn bis_fnc_dynamicText;[_finalText,[safezoneX + safezoneW - 0.55,0.48],[safezoneY + safezoneH - 0.78,0.7],1,0,0] spawn BIS_fnc_dynamicText;}
        else {playsound ["snd_geigerclick002", true];['<img align=''right'' size=''1.8'' shadow=''1'' image='+(str(_radi20pic))+' />',[safezoneX + safezoneW - 0.62,0.48],[safezoneY + safezoneH - 0.8,0.7],1,0,0,3099] spawn bis_fnc_dynamicText;[_finalText,[safezoneX + safezoneW - 0.55,0.48],[safezoneY + safezoneH - 0.78,0.7],1,0,0] spawn BIS_fnc_dynamicText;};
    } else {playsound ["snd_geigerclick001", true];['<img align=''right'' size=''1.8'' shadow=''1'' image='+(str(_radi30pic))+' />',[safezoneX + safezoneW - 0.62,0.48],[safezoneY + safezoneH - 0.8,0.7],1,0,0,3099] spawn bis_fnc_dynamicText;[_finalText,[safezoneX + safezoneW - 0.55,0.48],[safezoneY + safezoneH - 0.78,0.7],1,0,0] spawn BIS_fnc_dynamicText;};
  };
  sleep random 2.5;
};