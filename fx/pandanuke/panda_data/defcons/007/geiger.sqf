private ["_xpos", "_ypos", "_blast_time", "_radius", "_all_radius", "_current_radius",
         "_v", "_distance", "_radiation", "_sleep", "_count", "_random"];

_xpos = _this select 0;
_ypos = _this select 1;
_blast_time = _this select 2;

_all_radius = strahlungs_radius * 1.3;
_radius = _all_radius;
_v = _radius / (2 * strahlung_lebenszeit);

while {_radius > 1} do
{
  _current_radius = _radius - (time - _blast_time) * _v;
  _distance = [_xpos, _ypos] distance player;  
  _sleep = 1;
  if ( _distance < _current_radius ) then
  {
    _radiation = (1 - _distance / _current_radius) * _current_radius / _all_radius;
    if ( vehicle player != player ) then {_radiation = strahlung_schaden_kfz * _radiation};
    _sleep = 4;
    _count = _radiation * 10;
    for "_x" from 0 to _count do
    {
      playsound "snd_geigerfull001";
      _random = (4 * random 1) / 10;
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