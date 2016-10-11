private ["_unit"];

_unit = _this select 0;

while { damage _unit > 0.2 } do 
{
  _unit say [format ["schnief%1", floor (random 10) + 1], 100];	//schnief1-10  sounds
  sleep 6;
};