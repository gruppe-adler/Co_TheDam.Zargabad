/*
Atom-Modul
funktion:
anordnung:
betatest 2014:

bugs:

*/
//this addeventhandler ["handledamage",{_this call panda_fnc_handleDamage}];

//panda_handleDamage = {
        _veh = _this select 0;
        _damage = _this select 2;
        _ammo = _this select 4;

        

        if (_ammo == "satchelCharge_remote_ammo") then {

                //--- Increase damage
                _damage = _damage * 3; 

        } else {
            _damage = _damage;
        };
        _damage
 //   };