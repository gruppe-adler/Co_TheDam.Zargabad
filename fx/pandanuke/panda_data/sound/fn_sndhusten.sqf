private ["_unit"];

_unit = _this select 0;

while { damage _unit > 0.2 } do 
{
  _unit say [format ["hust%1", floor (random 4) + 1], 100];	//hust1-4  sounds
  sleep 6;
};