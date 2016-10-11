private ["_object", "_radius", "_rad1", "_rad2", "_rad3"];

_object = _this select 0;
_radius = _this select 1;
_rad1 = _radius;
_rad2 = _radius / 2;
_rad3 = _radius / 4;

while { alive _object } do
{
  waituntil { player distance _object < _rad1 || ! alive _object };
  if ( player distance _object < _rad1 ) then
  {
    if ( player distance _object < _rad2 ) then
    {
      if ( player distance _object < _rad3 )
        then {playsound ["snd_geigerclick003",true]}
        else {playsound ["snd_geigerclick002",true]};
    } else {playsound ["snd_geigerclick001",true]};
  };
  sleep random 2;
};