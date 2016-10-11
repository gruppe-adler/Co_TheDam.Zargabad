//					Atom Modul Config
//			TestVersion | please support me on MakeArmaNotWar
//
//
class CfgSyndicate
	{
	#include "panda_synconfig.hpp"
	};
class DefaultEventhandlers;
class CfgPatches
{
	class panda_data
	{
		units[]={

		"panda_sprengkopfA",
		"panda_sprengkopfB",
		"panda_Laptop_device",
		"panda_ModuleNuke",
		"panda_verstrahlt_O",
		"pandazeusemp",
		"panda_atommini1",
		"panda_atommini7",	
		"panda_kfzD"
		};
		version="0.1";
		versionStr="0.1";
		versionDesc="Panda Syndicate";
		weapons[]={};
		requiredVersion=0.1;
		author[]=
		{"pandabe4r"};
		requiredAddons[]=
		{
			"panda_gen",
			"panda_zeus",
			"panda_mod",
			"panda_vec",		
		
			"A3_Data_F",
			"A3_Misc_F",
			"A3_Modules_F_Events",
			"A3_Structures_F",
			"A3_Soft_F",
			"A3_Modules_F",
			"A3_Functions_F",
			"A3_UI_F",
			"A3_Weapons_F"
		};
	};
};

class cfgAddons
{
	access=2;
	class PreloadBanks {};
	class PreloadAddons
	{
		class panda_datapreload
		{
			list[]=
			{
				"panda_data",
				"panda_mod",
				"panda_gen",
				"panda_zeus"
			};
		};
	};
};

class CfgFactionClasses
{
	class pandaA3
	{
		access = "ReadAndCreate";
		displayName="Panda Syndicate";
		icon = "\panda_syndicate\panda_data\data\icons\64_minimega.paa";	//tempest icon in editor und zeus
		priority=8;
		//side = 7;
		side = TLogic;
		//addon = "panda_data";

	};
};

//klassen für device
class cfgVehicleClasses 
{
	class panda_atom_klasse
	{
		displayName = "A3 Atom Devices";
		icon = "\panda_syndicate\panda_data\data\icons\64_minimega.paa"; // Map icon. Delete this entry to use the default icon
		//icon = "\panda_syndicate\panda_data\data\icons\265_white_nuke.paa";
		//side = TLogic;
		side = 4;
	};
};


class CfgMods
{
	class panda
	{
		dir="@panda_syndicate";
		name="Syndicate Addons (Arma III)";
		picture="\panda_syndicate\panda_data\data\icons\64_minimega.paa";
		hidePicture=1;
		hideName=1;
		actionName="Website";
		action="test.com";
	};
};
class CfgFunctions {
	createShortcuts = 1;
	class panda {

		tag = "panda";

		class syndicate 
		{
			file = "\panda_syndicate\panda_data\preload";
			//file = "x\panda_syndicate\addons\panda_syndicate\panda_data\preload";
			//class gameloaded {};
			//class whatiam {preInit=1;};
			//class sendmp {};
			class preload {}; //{preInit=1;};				
			class init {preInit=1;};



		};
		class corefunx
		{
		file = "\panda_syndicate\panda_data\core";
		//class allunitagony{};
		//class animationu{};
		//		class animationx{};
		//		class darkmatter{};

			class ash{};					//visual ash for unit
			class codecompare {};			//code comparisment a,b
			class schutzgebaude {};	//damage factor for buildings
			class countdown {};				//count down 
			class distanceASL {};
			class envi{};				//visual 
			class envi2{};				//visual 
			class envistop{};			//stop all optic effects
			class empair {};			//action for all air
			class empblur {};
			class empefx {};
			class empefx2 {};			
			class empflash {};			//visual 
			class empfuel {};
			class empguns {};
			class emplamps {};
			class emplight {};
			class emplightx {};
			class emppowered {};
			class empsound {};
			class empunit {};
			class empunits {};
			class empvec {};
			class empwave {};
			class empwave2 {};
			
			class falloutcloud {};			
			class getanyposition {};
			class strahlungszone {}; //old radzone			
			class schockwelle {};		//old shockwave
			class druckwelle {};
			class setmarker {};
			class damagestaticnear {}; //old shockawestatic
			class whatiam {};
			class quake{};
			class geiger{};
			class strahlung{};
			class handleDamage {};	
			class DirToPos {}
			class damagewall {};
			class damagewallrun {};	
			class wind2{};
			//class moveduck{};
			//class playerRadTag{};
			//class sandsturm{};
			//class zigarette{};

			//class schneeversuch2{};
		};
		class funx_sound
		{
		file = "\panda_syndicate\panda_data\sound";
			class exsound {};
			class sndschnief {};
			class sndhusten {};
			class sndfrieren {};
			class list1{};
			class list1sounds{};
			class sndrndv1{};			
		};
		
		class funx_display
		{
		file = "\panda_syndicate\panda_data\dialog\functions";
			class initDamageSlider{};
			class initCoordinateRadius{};
		};
		class funx_demo
		{
		file = "\panda_syndicate\panda_data\zeus";
			class verstrahlt_O {};
			class verstrahlt_U {};

		};
		
		class funx_atom001
		{	
		file = "\panda_syndicate\panda_data\defcons\001";
			class atom001{
				description = "Function description"; // You can write some words about your fonction
				preInit = 0; // 1 to call the function upon mission start, before objects are initialized. Passed arguments are ["preInit"]
				postInit = 0; // 1 to call the function upon mission start, after objects are initialized. Passed arguments are ["postInit"]
				recompile = 0; // 1 to recompile the function upon mission start
				};
		};
		
		class funx_atom007
		{	
		file = "\panda_syndicate\panda_data\defcons\007";
			class atom007{};
		};	
	};
};

#include "\panda_syndicate\panda_data\videosettings.hpp"


//sounds
#include "\panda_syndicate\panda_data\data\sounddesign\sndconfig.hpp"
//marker and hints
#include "\panda_syndicate\panda_data\hints\cfghints.hpp"
#include "\panda_syndicate\panda_data\hints\cfgmarkers.hpp"	

//rsc
//#include "\panda_syndicate\panda_data\dialog\rscdisplaydata\cfgdisplay.hpp"
//#include "\panda_syndicate\panda_data\dialog\rscdisplaydata\cfgdefines.hpp"
#include "\panda_syndicate\panda_data\dialog\defines.hpp"
#include "\panda_syndicate\panda_data\dialog\RscTestControlTypes.hpp"



//#include "\panda_syndicate\panda_data\defcons\codex\displaybase.hpp"
//#include "\panda_syndicate\panda_data\defcons\codex\displaycodex.hpp"


