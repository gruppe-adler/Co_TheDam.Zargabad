class defaultUserActions;
class DefaultEventhandlers;
//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
//Name und class liste der units für editor und zeus
class CfgPatches
{
	class panda_vec
	{
		units[] = {
		"panda_kfzD"	
		};

		requiredAddons[] = {
		"A3_Soft_F"
		};
		requiredVersion = 0.1;
		weapons[]={};
		author[] = {"pandabe4r"};
	};
};


//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
//tempest car truck
class CfgVehicles
{
	class Car;
	class Car_F: Car
	{
		class HitPoints;
	};
	class Truck_F: Car_F
	{
		class ViewPilot;
		class HitPoints: HitPoints
		{
			class HitLFWheel;
			class HitLBWheel;
			class HitLMWheel;
			class HitLF2Wheel;
			class HitRFWheel;
			class HitRBWheel;
			class HitRMWheel;
			class HitRF2Wheel;
		};
	};
	class Truck_03_base_F: Truck_F
		{
		class HitPoints;
		
	
		};
//class Truck_03_base_F;
class panda_base_truck : Truck_03_base_F
{
	scope = 1; // Editor visibility; 2 will show it in the menu, 1 will hide it.
	scopeCurator = 1; // Curator visibility; 2 will show it in the menu, 1 will hide it.
	vehicleClass="";
	faction = "";	
	//category = "";
	side=4;
	model="\A3\Soft_F_EPC\Truck_03\Truck_03_device_F.p3d";
	author="";
	_generalMacro="Truck_03_base_F";
	unitInfoType="";
	
		htMin = 60;		// Minimum half-cooling time (in seconds)
		htMax = 180;	// Maximum half-cooling time (in seconds)
		afMax = 100;	// Maximum temperature in case the model is alive (in celsius)
		mfMax = 8;		// Maximum temperature when the model is moving (in celsius)
		mFact = 1;		// Metabolism factor - number from interval <0, 1> (0 - metabolism has no influence, 1 - metabolism has full influence (no other temperature source will be considered)).
		tBody = 150;	// Metabolism temperature of the model (in celsius)
		maxSpeed = 20;
		armor=1850;
		cost = 9000;
		//threat[] = {1, 0.3, 0.4};
		//audible = 20;
		fuelCapacity=94;
		idleRpm=1000;
		redRpm=4000;
		mapSize=10.93;

		incomingMissileDetectionSystem = 16;
		soundIncommingMissile[] = {"\A3\Sounds_F\weapons\Rockets\locked_3",0.15,1.5};
		class UserActions
		{
			class SirenOn
			{
				displayName="Siren On";
				displayNameDefault="<img image='\panda_syndicate\panda_data\data\tempest\ui\sirenon.paa' size='1.8'/>";
				position="mph_axis";
				onlyforplayer="true";
				radius=5;
				condition="!(this getvariable [""sirenon"", false]) and (player == driver this)AND Alive(this) and canmove this";
				statement="this setvariable [""sirenon"", true, true]";
			};
			class SirenOff
			{
				displayName="Siren Off";
				displayNameDefault="<img image='\panda_syndicate\panda_data\data\tempest\ui\sirenoff.paa' size='1.8'/>";
				position="mph_axis";
				onlyforplayer="true";
				radius=5;
				condition="(this getvariable [""sirenon"", false]) and (player == driver this)AND Alive(this) and canmove this";
				statement="this setVariable [""sirenon"", false, true]";
			};
			class HornOn
			{
				displayName="Horn On";
				displayNameDefault="<img image='\panda_syndicate\panda_data\data\tempest\ui\sirenon.paa' size='1.8'/>";
				position="mph_axis";
				onlyforplayer="true";
				radius=5;
				condition="!(this getvariable [""hornon"", false]) and (player == driver this)AND Alive(this) and canmove this";
				statement="this setvariable [""hornon"", true, true]";
			};
			class HornOff
			{
				displayName="Horn Off";
				displayNameDefault="<img image='\panda_syndicate\panda_data\data\tempest\ui\sirenoff.paa' size='1.8'/>";
				position="mph_axis";
				onlyforplayer="true";
				radius=5;
				condition="(this getvariable [""hornon"", false]) and (player == driver this)AND Alive(this) and canmove this";
				statement="this setVariable [""hornon"", false, true]";
			};
		};
};
	
//+++++  devicetruck

class panda_kfzD: panda_base_truck
	{
    author="pandabe4r";	
	_generalMacro="panda_kfzD";
	scope = 2; // Editor visibility; 2 will show it in the menu, 1 will hide it.
	scopeCurator = 2; // Curator visibility; 2 will show it in the menu, 1 will hide it.	
	vehicleClass="panda_atom_klasse";
	faction = "pandaA3";
    side =1;
    //faction="OPF_F";
    crew="C_man_1";
	displayName="Atom Transporter(v1)-blu";
	unitInfoType="RscUnitInfoTank";
	model="\A3\Soft_F_EPC\Truck_03\Truck_03_device_F.p3d";
	//picture="\A3\Soft_F_EPC\Truck_03\Data\UI\truck_03_device_CA.paa";
	//icon="\A3\Soft_F_EPC\Truck_03\Data\UI\map_Truck_03_Device_CA.paa";

	icon = "\panda_syndicate\panda_data\data\icons\64_minimega.paa";
	//portrait="\panda_syndicate\panda_data\data\icons\256_27158001_gefahr.paa";
	picture="\panda_syndicate\panda_data\data\icons\64_minimega.paa";
	//explosioneffect = "FuelExplosionBig";//
	radarType=8;
	transportSoldier=1;
	curatorCost=1000;		
	hiddenselections[]=
		{
			"Camo1",
			"Camo2"
	//		"Camo3",
	//		"Camo4"			
		};
	hiddenSelectionsTextures[] = {
	"\panda_syndicate\panda_data\data\tex\tempest\grau_o\truck_03_ext01_co.paa",	//01
	"\panda_syndicate\panda_data\data\tex\tempest\grau_o\truck_03_ext02_co.paa"		//02
								};
	class EventHandlers
		{
			init="hie = [_this select 0] execVM ""\panda_syndicate\panda_data\defcons\Tempest\tempest_siren.sqf"";hoe = [_this select 0] execVM ""\panda_syndicate\panda_data\defcons\Tempest\tempest_horn.sqf"";hue=[_this select 0,20] execVM ""\panda_syndicate\panda_data\defcons\tempest\init_kfz.sqf"";[_this select 0,0] execVM ""\panda_syndicate\panda_data\defcons\tempest\init_code2.sqf""";
		};							
		
	};


};	

class PreloadTextures
{
	class CfgVehicles
	{
		//class panda_kfzA
		//{
		//	model="@*";
		//};
		class panda_kfzD
		{
			model="@*";
		};
	};
};


//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
//preload folders und funktionen
//class CfgFunctions 
//{
//	createShortcuts = 1;
//	class panda
//	{
//		tag = "panda";
//
//	};
//};