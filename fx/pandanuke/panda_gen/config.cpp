class defaultUserActions;
class DefaultEventhandlers;
//Name und class liste der units für editor und zeus
class CfgPatches
{
	class panda_gen
	{
		units[] = {
		"panda_sprengkopfA",
		"panda_sprengkopfB",
		"panda_Laptop_device"		
		};
		requiredVersion = 0.1;
		weapons[]={};
		author[] = {"pandabe4r"};
		requiredAddons[] = {
		"A3_Structures_F"
		};
	};
};


class CfgVehicles
{
//tempest device
	class Strategic;
	class All 
	{
		class EventHandlers;
	};

	class Land_Device_assembled_F: Strategic {
	class EventHandlers;
	};
class panda_sprengkopfA: Land_Device_assembled_F
	{
    author="pandabe4r";
	scope = 2; // Editor visibility; 2 will show it in the menu, 1 will hide it.
	scopeCurator = 2; // Curator visibility; 2 will show it in the menu, 1 will hide it.
	faction = "pandaA3";
	subCategory ="unit";
	_generalMacro="panda_sprengkopfA";
	displayName="EMP Generator 1(closed)";
	vehicleClass="panda_atom_klasse";
	curatorCost=1000;
	portrait="\panda_syndicate\panda_data\data\icons\256_27158286_hazard.paa";
	cost=9000;
	unitInfoType="";
	//hiddenSelectionsTextures[] = {
	//"\panda_syndicate\panda_data\data\tex\SprengkopfB\device_assembled_co2.paa"	//neu machen
	//};
	//class DestructionEffects
	//	{
	//	};
	class EventHandlers: EventHandlers {
		init = "[_this select 0,10] execVM ""\panda_syndicate\panda_data\defcons\tempest\init_gen.sqf"";[_this select 0,0] execVM ""\panda_syndicate\panda_data\defcons\tempest\init_code.sqf""";
		};
	};
class panda_sprengkopfB: Land_Device_assembled_F
	{
    author="pandabe4r";	
	scope = 2; // Editor visibility; 2 will show it in the menu, 1 will hide it.
	scopeCurator = 2; // Curator visibility; 2 will show it in the menu, 1 will hide it.
	vehicleClass="panda_atom_klasse";
	faction = "pandaA3";
	//subCategory ="unit";
	_generalMacro="panda_sprengkopfB";
	displayName="EMP Generator 1(open)";

	curatorCost=1000;	
	unitInfoType="RscUnitInfoTank";
	damageEffect="DamageSmokePlane";
	portrait="\panda_syndicate\panda_data\data\icons\256_27158286_hazard.paa";
	model="\A3\Structures_F_EPC\Items\Electronics\Device_disassembled_F.p3d";
	cost=9000;

	//class DestructionEffects
	//	{
	//	};
	class EventHandlers: EventHandlers {
		init = "[_this select 0,10] execVM ""\panda_syndicate\panda_data\defcons\tempest\init_gen.sqf"";[_this select 0,0] execVM ""\panda_syndicate\panda_data\defcons\tempest\init_code.sqf""";
		};
	};
	class Land_Laptop_device_F;
class panda_Laptop_device: Land_Laptop_device_F
	{
		author="pandabe4r";
		_generalMacro="Land_Laptop_device_F";
		scope=2;
		scopeCurator = 2; // Curator visibility; 2 will show it in the menu, 1 will hide it.
		displayName="Atom Laptop";
		vehicleClass="panda_atom_klasse";
		faction = "pandaA3";
		hiddenSelectionsTextures[]=
		{
		"\panda_syndicate\panda_data\data\icons\512_achtung_sign.paa"
		};
		class EventHandlers {
		//init = "[_this select 0,10] execVM ""\panda_syndicate\panda_data\defcons\tempest\init_gen.sqf"";[_this select 0,0] execVM ""\panda_syndicate\panda_data\defcons\tempest\init_code.sqf""";
		init = "[_this select 0,0] execVM ""\panda_syndicate\panda_data\defcons\tempest\init_code.sqf""";
		};
	};
	

};	

class PreloadTextures
{
	class CfgVehicles
	{

		class panda_sprengkopfA
		{
			model="@*";
		};
		class panda_sprengkopfB
		{
			model="@*";
		};

	};
};



