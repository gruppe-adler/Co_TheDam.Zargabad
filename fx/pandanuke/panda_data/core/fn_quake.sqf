for "_i" from 0 to 140 do {
	_vx = vectorup _this select 0;
	_vy = vectorup _this select 1;
	_vz = vectorup _this select 2;
	_coe = 0.03 - (0.0001 * _i);
			_this setvectorup [
				_vx+(-_coe+random (2*_coe)),
				_vy+(-_coe+random (2*_coe)),
				_vz+(-_coe+random (2*_coe))
			];
	sleep (0.01 + random 0.01);
};