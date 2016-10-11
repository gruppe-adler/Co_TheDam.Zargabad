/*
Atom-Modul
funktion:
anordnung:
betatest 2014:

bugs:

*/
//if (!isServer) exitWith {};

_pos = _this select 0;
_kT = _this select 1;
_fC = true;

radTime = (ln(_kT)+1) * 6666; // Endurance of Radiation time in air
heatTime = (ln(_kT)+1) * 167; // Endurance of Heat time in air
panda_schockdistanz = (ln(_kT)+1) * 3333; // How far will shockwave spread
panda_hitzewelleausbreitung = (ln(_kT)+1) * 6666; // How far will heatwave spread
AllArray = [];
timeAfter = 0;
plus = (1.5 + random 1);

// Heatwave effect
[position _pos select 0,position _pos select 1,_kT] exec "\panda_syndicate\panda_data\defcons\001\bodennebel3.sqs";
// Shockwave affect
AllArray = nearestObjects [_pos,["Man","Air","Motorcycle","Car","Tank","Ship","StaticWeapon"], 2000];
{[_x,_pos,_kT,false] spawn panda_fnc_druckwelle;} forEach AllArray;



[_pos] spawn panda_fnc_strahlungszone;

while {panda_schockausbreitung < (panda_schockdistanz - 1)} do {
heatPlus = ln(panda_hitzewelleausbreitung - panda_hitzewelledistanz)*((ln(_kT)+1)*88)/20;
if (heatPlus > 0) then {panda_hitzewelledistanz = panda_hitzewelledistanz + heatPlus; };
if (panda_hitzewelledistanz >= (panda_hitzewelleausbreitung - 1)) then {panda_hitzewelledistanz = (panda_hitzewelleausbreitung);};
panda_schockausbreitung = panda_schockausbreitung + ln(panda_schockdistanz - panda_schockausbreitung)*((ln(_kT)+1)*41)/20;
//hintSilent format ["Heatwave: %1 \n Shockwave: %2",panda_hitzewelledistanz,panda_schockausbreitung];
sleep 0.05;
};
	while {timeAfter < radTime} do
	{
		plus = (1.5 + random 1);
		sleep plus;
		timeAfter = timeAfter + plus;
	};