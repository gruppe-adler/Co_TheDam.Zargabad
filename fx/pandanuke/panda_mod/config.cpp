class CfgPatches
{
	class panda_mod
	{
		units[] = {
		"panda_ModuleNuke"
		};
		requiredVersion = 0.1;
		author[] = {"pandabe4r"};
		requiredAddons[] = {
		"A3_Modules_F"
		};
	};
};


class CfgVehicles
{
	class Logic;
	class Module_F: Logic
	{
		class ArgumentsBaseUnits
		{
			class Units;
		};
		class ModuleDescription
		{
			class AnyBrain;
		};
	};
	class panda_ModuleNuke: Module_F
	{
		// Standard object definitions
		scope = 2; // Editor visibility; 2 will show it in the menu, 1 will hide it.
		displayName = "Atom Modul"; // Name displayed in the menu
		picture="\panda_syndicate\panda_data\data\icons\256_mole1.paa";
		icon = "\panda_syndicate\panda_data\data\icons\256_black_nuke.paa"; // Map icon. Delete this entry to use the default icon		
		portrait= "\panda_syndicate\panda_data\data\icons\256_mole1.paa";
		mapSize=15;
		category = "PandaA3";		
		author="pandabe4r";
		// Name of function triggered once conditions are met
		function = "panda_fnc_moduleNuke";
		// Execution priority, modules with lower number are executed first. 0 is used when the attribute is undefined
		functionPriority = 1;
		// 0 for server only execution, 1 for remote execution on all clients upon mission start, 2 for persistent execution
		isGlobal = 1;
		// 1 for module waiting until all synced triggers are activated
		isTriggerActivated = 1;
		// 1 if modules is to be disabled once it's activated (i.e., repeated trigger activation won't work)
		isDisposable = 0;
		isPersistent = 1;
		// Menu displayed when the module is placed or double-clicked on by Zeus
		curatorInfoType = "RscDisplayControlsNuke001";

		// Module arguments
		class Arguments: ArgumentsBaseUnits
		{
			// Arguments shared by specific module type (have to be mentioned in order to be placed on top)
			class Units: Units {};
			// Module specific arguments
			class MegaT
  			{
				displayName = "POWER"; // Argument label
				description = "Power"; // Tooltip description
				typeName = "NUMBER"; // Value type, can be "NUMBER", "STRING" or "BOOL"
				class values
				{
					class 1Mt	{name = "Power 1MT"; value = 1; default = 1;}; // Listbox item
					//class 5Mt	{name = "Power 5MT"; value = 5;};
					//class 10Mt	{name = "Power 10MT";	value = 10;}; 
					//class 100Mt	{name = "Power 100MT"; value = 100;};
				};
			};
			class Zeitv 
			{
				displayName = "Countdown";
				description = "seconds";
				typeName = "NUMBER"; 
				defaultValue = 10;
			};
			class Metodv
  			{
				displayName = "Method"; // Argument label
				description = "v1 and v7 avaiable"; // Tooltip description
				typeName = "NUMBER"; // Value type, can be "NUMBER", "STRING" or "BOOL"
				class values
				{

					class Nukev1 {name = "V1 4 testing"; value = 1; default = 1;}; // Listbox item
					//class Nukev2 {name = "V2 not yet"; value = 2;};
					//class Nukev3 {name = "V3 not yet"; value = 3;};	
					//class Nukev4 {name = "V4 not yet"; value = 4;};	
					//class Nukev5 {name = "V5 not yet"; value = 5;};	
					//class Nukev6 {name = "V6 not yet"; value = 6;};
					class Nukev7 {name = "V7 4 testing"; value = 7;};					
				};
			}; 
			class Wolkev 
			{
				displayName = "Fallout";
				description = "Radioactive Clouds"; // Tooltip description
				typeName = "NUMBER"; 
				
				class values
				{
					class 1wolkev1 {name = "Ja"; value = 1; default = 1;};
					class 0wolkev0 {name = "Nein";value = 0;};
				};
			};
			class Radius 
			{
				displayName = "Radius of Destruction";
				description = "Radius/Meter";
				typeName = "NUMBER"; 
				defaultValue = 1000;
			};
			class Name
  			{
				displayName = "Name";
				description = "Name of the Atombomb";
				defaultValue = "Panda Atom Test"; // Default text filled in the input box
				// When no 'values' are defined, input box is displayed instead of listbox
			};

		};

		// Module description. Must inherit from base class, otherwise pre-defined entities won't be available
		class ModuleDescription: ModuleDescription
		{
			description[] = {"Beschreibung",
					"2014 by pandabe4r",
					"Berlin"}; // Short description, will be formatted as structured text
			sync[] = {"EmptyDetector","LocationArea_F","O_Truck_03_device_F"}; // Array of synced entities (can contain base classes)
	 
			class LocationArea_F
			{
				description[] = { // Multi-line descriptions are supported
					"",
					"mehr Erklärung bald"
				};
				position = 1; // Position is taken into effect
				direction = 1; // Direction is taken into effect
				optional = 1; // Synced entity is optional
				duplicate = 1; // Multiple entities of this type can be synced
				synced[] = {"BLUFORunit","AnyBrain"}; // Pre-define entities like "AnyBrain" can be used. See the list below
			};
			class BLUFORunit
			{
				description = "Short description";
				displayName = "Any BLUFOR unit"; // Custom name
				icon = "iconMan"; // Custom icon (can be file path or CfgVehicleIcons entry)
				//side = 1; // Custom side (will determine icon color)
			};
		};
	};
};

class CfgFunctions 
{
	class panda
	{
		tag = "panda";
		class funx_mod
		{
			file = "\panda_syndicate\panda_mod\functions";
			class moduleNuke{};
		};
	};
};