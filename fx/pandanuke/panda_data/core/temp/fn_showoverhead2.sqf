private["_visible","_position","_nearUnits"];
_nearUnits = nearestObjects[(visiblePosition player),["Man"],35];
{
addMissionEventHandler ["Draw3D", {drawIcon3D [
"\panda_syndicate\panda_data\data\icons\256_bioh_bl.paa",
[0,0,0,1],
[ 
(visiblePosition _nearUnits) select 0, 
(visiblePosition _nearUnits) select 1, 
3 
], 
1,
1,
45, 
name _nearUnits,
 1,
 0.03,
 "PuristaLight" ]; 
}];

} foreach _nearUnits;