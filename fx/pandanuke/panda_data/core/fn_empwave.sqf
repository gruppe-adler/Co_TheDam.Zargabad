/*
Atom-Modul
funktion:
anordnung:
betatest 2014:

bugs:

*/
private ["_pos", "_posx", "_posy", "_rad","_next", "_dis", "_height", "_coef","_velx", "_vely", "_velz", "_col", "_agl", "_sclz","_con"];
_pos =_this select 0;

_posx = _pos select 0;
_posy = _pos select 1;
_rad = panda_zeus_emp1 * 1.5;

_next = 0;
_dis = _rad;
_height = 30;
_con = 3;
_sclz = 1;

_cnt = 0;
_agl = random 360;
_con = _con + 2;

while {_cnt < 200} do
{
	 _dis = _dis + 20; 
	 _height = _height - 3; 
	 _next = _next + 1;


_coef = 0.98 + random 0.04;
_velx = (sin _agl) * _rad * _coef;
_vely = (cos _agl) * _rad * _coef;
_velz = 1;
_col = 0.2 - random 0.4;

drop [["\A3\data_f\ParticleEffects\Universal\Refract",1,0,1],"","Billboard",1,_con + random 1,[_posx + _dis * (sin _agl),_posy + _dis * (cos _agl), _height],[_velx,_vely,_velz],1,1.275,1.0,0.01,[70,110],[[0.55, 0.5, 0.45, 0],[_col + 0.55, _col + 0.5, _col + 0.45, _sclz],[_col + 0.55, _col + 0.5, _col + 0.45, _sclz * 0.8],[_col + 0.5, _col + 0.45, _col + 0.4, _sclz * 0.6],[_col + 0.45, _col + 0.4, _col + 0.35, _sclz * 0.4],[_col + 0.4, _col + 0.35, _col + 0.3, _sclz * 0.2],[_col + 0.35, _col + 0.3, _col + 0.35, 0]],[0],0.0,2.0,"","",""];

_agl = _agl + 4;
_cnt = _cnt + 1;
};
