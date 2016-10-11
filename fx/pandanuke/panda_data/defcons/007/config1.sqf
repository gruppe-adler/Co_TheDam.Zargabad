private ["_object", "_xpos", "_ypos"];

_object = _this select 0;
_xpos = getpos _object select 0;
_ypos = getpos _object select 1;


strahlungzeit = 360;
schaden_an = false;
strahlungs_radius = 1600;
druck_welle_spd = 190;
strahlung_lebenszeit = 10 * 60;
strahlung_schaden_dmg = 0.02;
strahlung_schaden_kfz = 3 / 4;
_wave_radius = strahlungs_radius * 1.7;
main_vehicles = nearestobjects [[_xpos, _ypos , 0], ["Car", "Motorcycle", "Tank", "Air", "Ship"], strahlungs_radius * 1.3];
main_objects = nearestobjects [[_xpos, _ypos, 0], [], _wave_radius];
main_airs = nearestobjects [[_xpos, _ypos , 0], ["Air"], strahlungs_radius];
panda_screen = call compile preprocessfile "\panda_syndicate\panda_data\defcons\007\screeninit.sqf";
