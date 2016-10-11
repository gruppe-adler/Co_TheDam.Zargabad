private ["_unit"];

_unit = _this select 0;

while { damage _unit > 0.2 } do 
{
  _unit say [format ["frieren%1", floor (random 3) + 1], 100];	//frieren1-3  sounds
  sleep 6;
};