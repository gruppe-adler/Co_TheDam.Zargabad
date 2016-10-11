class CfgPatches
{
	class panda_zeus
	{
		units[]=
		{
		"pandazeusemp",	//zeus emp
		//"pandazeusnuke",	//zeus nuke
		//"pandazeusmininuke",	//zeus nuke
		//"pandazeusdarkm",	//zeus nuke			
		"panda_atommini1",		//zeus atom explosion 1
		//"panda_atommini2",		//zeus atom explosion 2
		//"panda_atommini3",		//zeus atom explosion 3
		//"panda_atommini4",		//zeus atom explosion 4
		//"panda_atommini5",		//zeus atom explosion 5
		//"panda_atommini6",		//zeus atom explosion 6
		"panda_atommini7",		//zeus atom explosion 7		
		//"panda_verstrahlt_U",	//zeus UNITS verstrahlen		
		"panda_verstrahlt_O"	//zeus OBJECT verstrahlen

		};
		weapons[]={};
		requiredVersion=0.1;
		author[] = {"pandabe4r"};
		requiredAddons[]=
		{	
			"A3_Modules_F",
			"A3_Modules_F_Curator",
			"A3_Modules_F_Events"
		};
	};
};
class CfgFunctions
{
	class panda
	{
		tag = "panda";
		class Zeusnuke
		{
		file="\panda_syndicate\panda_zeus\functions\nuke";
		class moduleZeusNuke {};
		};
		class Zeusmininuke
		{
		file="\panda_syndicate\panda_zeus\functions\mininuke";
		class moduleZeusminiNuke {};
		};
		class Zeusemp
		{
		file="\panda_syndicate\panda_zeus\functions\emp";
		class moduleZeusEMP {};
		class empA{};		
		};
		class Zeusdarkm
		{
		file="\panda_syndicate\panda_zeus\functions\darkmatter";
		class moduleZeusdarkm {};
		};
		class ZeusAtommini1
		{
		file="\panda_syndicate\panda_zeus\functions\Atommini1";		
		class Atommini1 {};		
		};
		class ZeusAtommini2
		{
		file="\panda_syndicate\panda_zeus\functions\Atommini2";
		class Atommini2 {};
		};		
		class ZeusAtommini3
		{
		file="\panda_syndicate\panda_zeus\functions\Atommini3";		
		class Atommini3 {};	
		};
		class ZeusAtommini4
		{
		file="\panda_syndicate\panda_zeus\functions\Atommini4";		
		class Atommini4 {};		
		};
		class ZeusAtommini5
		{
		file="\panda_syndicate\panda_zeus\functions\Atommini5";
		class Atommini5 {};
		};		
		class ZeusAtommini6
		{
		file="\panda_syndicate\panda_zeus\functions\Atommini6";
		class Atommini6 {};
		};	
		class ZeusAtommini7
		{
		file="\panda_syndicate\panda_zeus\functions\Atommini7";
		class Atommini7 {};
		};	
	};
};
class CfgVehicles
{
	class Logic;
	class Module_F: Logic
	{
		class ModuleDescription
		{
			class AnyPlayer;
		};
	};
class pandazeusnuke: Module_F
	{
		author="pandabe4r";
		_generalMacro="ModuleLightning_F";
		scope=1;
		scopeCurator=1;
		//work// category="Curator";
		category="PandaA3";		
		displayName="Zeus Nuke"; 
		icon = "\panda_syndicate\panda_data\data\icons\256_white_nuke.paa"; // Map icon. Delete this entry to use the default icon
		picture="\panda_syndicate\panda_data\data\icons\256_27157777_gefahr.paa";
		function="panda_fnc_moduleZeusNuke";
		isGlobal=1;
		isTriggerActivated=1;
		curatorCanAttach=1;
	curatorCost=1000;
		class ModuleDescription: ModuleDescription
		{
			description="Nuke Zeus Basic";
			position=1;
		};
	};
	//+++++++++++++++++++++++++++++++++++
class pandazeusmininuke: Module_F
	{
		author="pandabe4r";
		//_generalMacro="ModuleLightning_F";
		scope=1;
		scopeCurator=2;
		//work// category="Curator";
		category="PandaA3";		
		displayName="Zeus MiniNuke"; 
		icon = "\panda_syndicate\panda_data\data\icons\256_white_nuke.paa"; // Map icon. Delete this entry to use the default icon
		picture="\panda_syndicate\panda_data\data\icons\256_27157777_gefahr.paa";
		function="panda_fnc_moduleZeusNuke";
		isGlobal=1;
		isTriggerActivated=1;
		curatorCanAttach=1;
	curatorCost=1000;
		
		//curatorInfoType = "RscDisplayControlsNuke001";
		class ModuleDescription: ModuleDescription
		{
			description="MiniNuke Zeus Basic";
			position=1;
		};
	};
	//+++++++++++++++++++++++++++++++++++
class pandazeusemp: Module_F
	{
		author="pandabe4r";
		//_generalMacro="ModuleLightning_F";
		scope=1;
		scopeCurator=2;
		//work// category="Curator";
		category="PandaA3";	
		displayName="Zeus EMP"; 
		icon="\a3\Modules_F_Curator\Data\iconLightning_ca.paa";
		portrait="\a3\Modules_F_Curator\Data\portraitLightning_ca.paa";
		function="panda_fnc_moduleZeusEMP";
		isGlobal=1;
		isTriggerActivated=1;
		curatorCanAttach=1;
	curatorCost=1000;
		class ModuleDescription: ModuleDescription
		{
			description="EMP Zeus Basic";
			position=1;
		};
	};
class pandazeusdarkm: Module_F
	{
		author="pandabe4r";
		//_generalMacro="ModuleLightning_F";
		scope=1;
		scopeCurator=2;
		//work// category="Curator";
		category="PandaA3";	
		displayName="Zeus DarkMatter"; 
		icon="\a3\Modules_F_Curator\Data\iconLightning_ca.paa";
		portrait="\a3\Modules_F_Curator\Data\portraitLightning_ca.paa";
		function="panda_fnc_moduleZeusdarkm";
		isGlobal=1;
		isTriggerActivated=1;
		curatorCanAttach=1;
	curatorCost=1000;
		class ModuleDescription: ModuleDescription
		{
			description="Zeus DarkMatter";
			position=1;
		};
	};
	
	//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
//zeusmodul miniatom test1	
class panda_Atommini: Module_F
	{
	mapSize=2;
	scope = 1; // Editor visibility; 2 will show it in the menu, 1 will hide it.
	scopeCurator = 1; // Curator visibility; 2 will show it in the menu, 1 will hide it.
	//category="Curator";
	category="PandaA3";	
	//displayName = ""; 	// Name displayed in the menu
	function = "";
	//curatorInfoType = "RscDisplayControlsNuke001";
	icon = "\panda_syndicate\panda_data\data\icons\256_black_nuke.paa"; // Map icon. Delete this entry to use the default icon
	portrait="\panda_syndicate\panda_data\data\icons\256_27157777_gefahr.paa";
	curatorCanAttach=0;
	curatorCost=1000;
	//delete arguments;
	};
//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
//zeusmodul miniatom test2
class panda_Atommini1: panda_Atommini
	{
	mapSize=3;
	category="PandaA3";	
	//subCategory = "Common";
	displayName = "Zeus Atommini v1"; // Name displayed in the menu
	scope = 1; // Editor visibility; 2 will show it in the menu, 1 will hide it.
	scopeCurator = 2; // Curator visibility; 2 will show it in the menu, 1 will hide it.
	function = "panda_fnc_atommini1";
	//curatorInfoType = "RscDisplayControlsNuke001";
	//unitInfoType="RscUnitInfoTank";
	curatorCost=1000;
	isPersistent = 0;
	};
	class panda_Atommini2: panda_Atommini
	{
	displayName = "Zeus Atommini v2"; // Name displayed in the menu
	scopeCurator = 2; // Curator visibility; 2 will show it in the menu, 1 will hide it.	
	function = "panda_fnc_atommini2";
	};
	class panda_Atommini3: panda_Atommini
	{
	displayName = "Zeus Atommini v3"; // Name displayed in the menu
	scopeCurator = 2; // Curator visibility; 2 will show it in the menu, 1 will hide it.	
	function = "panda_fnc_atommini3";	
	};
	class panda_Atommini4: panda_Atommini
	{
	displayName = "Zeus Atommini v4"; // Name displayed in the menu
	scopeCurator = 2; // Curator visibility; 2 will show it in the menu, 1 will hide it.	
	function = "panda_fnc_atommini4";	
	};
	class panda_Atommini5: panda_Atommini
	{
	displayName = "Zeus Atommini v5"; // Name displayed in the menu
	scopeCurator = 2; // Curator visibility; 2 will show it in the menu, 1 will hide it.	
	function = "panda_fnc_atommini5";	
	};	
	class panda_Atommini6: panda_Atommini
	{
	displayName = "Zeus Atommini v6"; // Name displayed in the menu
	scopeCurator = 2; // Curator visibility; 2 will show it in the menu, 1 will hide it.	
	function = "panda_fnc_atommini6";	
	};	
	class panda_Atommini7: panda_Atommini
	{
	displayName = "Zeus Atommini v7"; // Name displayed in the menu
	scopeCurator = 2; // Curator visibility; 2 will show it in the menu, 1 will hide it.	
	function = "panda_fnc_atommini7";
	curatorCost=1000;
	isPersistent = 0;
	};	

//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
//verstrahltes objekt	
class panda_verstrahlt_O: panda_Atommini
	{
	mapSize=2;
	scope = 1; // Editor visibility; 2 will show it in the menu, 1 will hide it.
	scopeCurator = 2; // Curator visibility; 2 will show it in the menu, 1 will hide it.

	//subCategory = "Common";
	displayName = "Radiation to Object"; // Name displayed in the menu
	function = "panda_fnc_verstrahlt_O";
	author="pandabe4r";
	_generalMacro="panda_verstrahlt_O";	
	//curatorInfoType = "RscDisplayAttributeverstrahlt_O";
	icon="\panda_syndicate\panda_data\data\icons\256_deadhed_w.paa"; // Map icon. wenn tot 
	portrait="\panda_syndicate\panda_data\data\icons\256_27157979_gefahr.paa";
	curatorCanAttach=1;
	curatorCost=1000;

	class Arguments
		{
		};	
	};
//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
//verstrahlte einheit
class panda_verstrahlt_U: panda_Atommini
	{
	mapSize=2;
	scope = 1; // Editor visibility; 2 will show it in the menu, 1 will hide it.
	scopeCurator = 2; // Curator visibility; 2 will show it in the menu, 1 will hide it.

	displayName = "Einheit verstrahlt"; // Name displayed in the menu
	function = "panda_fnc_verstrahlt_U";
	author="pandabe4r";
	_generalMacro="panda_verstrahlt_U";
	//curatorInfoType = "RscDisplayAttributeverstrahlt_U";
	icon="\panda_syndicate\panda_data\data\icons\256_deadhed_w.paa"; // Map icon. wenn tot 
	portrait="\panda_syndicate\panda_data\data\icons\256_27157979_gefahr.paa";

	curatorCanAttach=1;
	curatorCost=1000;
	
	class Arguments
		{
		};
	};
};