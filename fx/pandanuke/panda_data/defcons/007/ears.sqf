private ["_xpos", "_ypos"];

_xpos = _this select 0;
_ypos = _this select 1;
enableEnvironment false;
enableCamShake true; addCamShake[1+random 5, 1+random 3, 5+random 15];
if ( [_xpos, _ypos, 0] distance player < (strahlungs_radius * 0.7) ) then
{
  0 faderadio 0;
  0 fadesound 0;
  0 fademusic 0;

  sleep 8;

  16 faderadio 1;
  16 fadesound 1;
  16 fademusic 0.5;
};