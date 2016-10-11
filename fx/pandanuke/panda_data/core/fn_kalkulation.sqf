/*
Atom-Modul
funktion:
anordnung:
betatest 2014:

bugs:

*/
panda_hitzewelledistanz = 0;
panda_schockausbreitung = 0;
radTime = (ln(_kT)+1) * 6666; // Endurance of Radiation time in air
heatTime = (ln(_kT)+1) * 167; // Endurance of Heat time in air
panda_schockdistanz = (ln(_kT)+1) * 3333; // How far will shockwave spread
panda_hitzewelleausbreitung = (ln(_kT)+1) * 6666; // How far will heatwave spread
AllArray = [];
timeAfter = 0;
plus = (2.5 + random 1);
while {panda_schockausbreitung < (panda_schockdistanz - 1)} do {
heatPlus = ln(panda_hitzewelleausbreitung - panda_hitzewelledistanz)*((ln(_kT)+1)*58)/10;
if (heatPlus > 0) then {panda_hitzewelledistanz = panda_hitzewelledistanz + heatPlus; };
if (panda_hitzewelledistanz >= (panda_hitzewelleausbreitung - 1)) then {panda_hitzewelledistanz = (panda_hitzewelleausbreitung);};
panda_schockausbreitung = panda_schockausbreitung + ln(panda_schockdistanz - panda_schockausbreitung)*((ln(_kT)+1)*21)/10;
sleep 0.1;
};