/*
Atom-Modul
funktion:
anordnung:
betatest 2014:

bugs:

*/
private ["_pos", "_lamps","_lampx","_selectStatic"];
_pos = _this select 0; 
//a3 base lights
_selectStatic = [
	"Lamps_Base_F",
	"PowerLines_base_F",
	"Land_PowerPoleWooden_L_F",
	"Land_NavigLight",
	"Land_runway_edgelight",
	"Land_runway_edgelight_blue_F",
	"land_flush_light",
	"Land_Flush_Light_green_F",
	"Land_Flush_Light_red_F",
	"Land_Flush_Light_yellow_F",
	"land_runway",
	"Land_Runway_PAPI",
	"Land_Runway_PAPI_2",
	"Land_Runway_PAPI_3",
	"Land_Runway_PAPI_4",
	"Land_fs_roof_F", 
	"Land_fs_sign_F",
    "Land_LampAirport_off_F",
    "Land_LampAirport_F",
    "Land_LampDecor_off_F" ,
    "Land_LampDecor_F", 
    "Land_LampHalogen_off_F", 
    "Land_LampHalogen_F", 
    "Land_LampHarbour_off_F", 
    "Land_LampHarbour_F", 
    "Land_LampShabby_off_F", 
    "Land_LampShabby_F", 
    "Land_LampSolar_off_F", 
    "Land_LampSolar_F", 
    "Land_LampStadium_F", 
    "Land_LampStreet_off_F", 
    "Land_LampStreet_F", 
    "Land_LampStreet_small_off_F", 
    "Land_LampStreet_small_F", 
	"Land_LightHouse_F",
	"Land_PortableLight_single_F",
    "Land_PortableLight_double_F",
	
	"Land_Bridge_01_PathLod_F",
	"Land_Bridge_Asphalt_PathLod_F",
	"Land_Bridge_Concrete_PathLod_F",
	"Land_Bridge_HighWay_PathLod_F",
	"Land_TTowerBig_1_F",
	"Land_TTowerBig_2_F",
	"Land_TTowerSmall_2_F"
];	
//+++++++++++++++++++++++++static lamps
for [{_i=0},{_i < (count _selectStatic)},{_i=_i+1}] do
	{
		//_lamps = (getMarkerPos "empzeusarea") nearObjects [_selectStatic select _i, 1000]; // 1000 = distance
		_lamps = _pos nearObjects [_selectStatic select _i, panda_zeus_emp1 * 1.1]; 
		
		sleep 0.035;
		{
		_x setDamage 0.95;
		} forEach _lamps;
	};  

_lampx = nearestObject [_pos, "Lamps_base_F"]; 
_lampx setHit ["light_1_hitpoint", 0.97]; //off _lamp setHit ["light_1_hitpoint", 0]; //on