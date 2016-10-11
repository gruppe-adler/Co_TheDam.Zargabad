private ["_sound_type"];
argt_sound= true;
while { true } do
{
  sleep (7 + random 5);
  if ( argt_sound ) then
  {
    _sound_type = format ["schnief%1", floor (random 10) + 1]; // schnief1-10 sndconfig
    {
      if ( alive _x ) then {_x say [_sound_type, 10]}; //try say2d and say3d
    } foreach panda_list_001;
  };
};