class GRAD_electricFence {

	class client {
		file = GRAD_electricFence\functions\client;

		class clientLoop;
		class fx_bzzzHit;
		class fx_createSmoke;
		class fx_createSparkLightLocal;
		class fx_getSparkSpawnPos;
		class fx_spark;
		class fx_sparksRip;
		class fx_spawnSpark;

	};

	class server {
		file = GRAD_electricFence\functions\server;
		
		class addDoorEH;
		class createDebugMarkers;
		class createTriggers;
		class findDoors;
		class findFences;
		class fxLoop;
		class init;
		class isElectricFence;
		class onCut;
		class setup;
		
	};
};