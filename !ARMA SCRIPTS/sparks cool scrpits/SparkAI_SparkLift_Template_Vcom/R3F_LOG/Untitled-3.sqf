if (isDedicated) exitwith {};
if (hasInterface) exitwith {};
waitUntil { !isNil "HC1" };
#include "unitDefines.hpp"

if (!hasInterface && !isServer) then {
leboatao = ["LIVADI","TRACHIA","OCHROLIMNI","MAZI_BAY","IRAKIA","FARONAKI","FAROS","EDESSA","DRIMEA","CAP_MAKRINOS","CAP_KATEGISDIS","BOMOS","AKTINARKI","LIVADI"];
lesplane = [];


	while {true} do {

		spawnedUnits = [];
		AISkillUnitsArray = [];
		spawnedUnitss = [];
		unitArray = [];
		airCavReturnGrp = [];
		stataticDestoyer = [];
		constructsArray = [];
		returnedUnits = [];
		CODEINPUT = [];
		hstartPos = "airCavSpawnMarker";
		factions = selectrandom lesgroupes;

		leselector = selectRandom ["AIR_CAMP", "KRYA_NERA",  "TONOS_BAY", "Pefkas",  "IREMI",  "HILL_226","FOTIA",  "DORIDA",  "FACTORY_S",  "FERES",  "FRINI",  "GALATI",  "IFESTIONA",  "KORE",  "KORONI",  "LOANNINA",  "MAGOS",  
									"Military_Fortification", "MILITARY",  "MINE","NEGADES",  "NIDADOS",  "NIFI",  "OREOKASTRO","ORINO","PANAGIA",  "PAROS", "POWER_PLANT", "QUARRY",  "RODOPOLI",  "SELEKANO", 
									"STADUIM", "SYRTA",  "ARISTI","BAD_HILL","CAP_AGRIOS",  "CHALKEIA_BAY", "NIDADOS_FOREST", "SYNNEFOROS",   "LIVADI","AAC_AIRFIELD", "AKTINARKI",  "BOMOS", "CAP_KATEGISDIS","CAP_MAKRINOS",  
									"DRIMEA", "EGINIO", "EDESSA", "FAROS", "IRAKIA", "LIMNI", "MAZI_BAY", "OCHROLIMNI","ALMYRA","SFAKA","SURF_CLUB",  "TRACHIA",  "IFESTIONA","DELFINAKI",  "ZAROS", "XIROLIMNI_DAM",  
									"VIKOS",  "TOPOLIA", "THERISA", "AIR_CAMP",  "PANOCHORI","KAVITIDA", "DUMPER", "ATHANOS",  "ALIKAMPOS", "AGIOS_PANAGIOTIS", "AGIA_STEMMA",  "MILITARY_BASE","ABDERA",  
									"AGIA_PELAGIA",  "AGIOS_GEORGIOS",  "Agios_KONSTANTINOS","AGIOS_PETROS",  "CHALKEIA",  "Chelonisi", "DIDYMOS"];

		{deleteVehicle _x;} count allDead;
		{if ((count (crew _x)) == 0 && (typeOf _x !="B_Slingload_01_Fuel_F") && (typeOf _x !="Land_Pod_Heli_Transport_04_bench_F") && (typeOf _x !="Land_Pod_Heli_Transport_04_covered_F") && (typeOf _x !="Land_Pod_Heli_Transport_04_ammo_F")) then { deleteVehicle _x;};} count (allMissionObjects "StaticWeapon");
		{deleteVehicle _x;} count (allMissionObjects "CraterLong");
		{deleteVehicle _x;} count (allMissionObjects "WeaponHolder");
		{deleteVehicle _x;} count (allMissionObjects "WeaponHolderSimulated");
		{deleteVehicle _x;} count (allMissionObjects "Ruins");
		{deleteVehicle _x;} count (allMissionObjects "GroundWeaponHolder");
		{deleteVehicle _x;} count (allMissionObjects "TimeBombCore");
		{deleteVehicle _x;} count (allMissionObjects "CraterLong_small");
		{deleteVehicle _x;} count (allMissionObjects "#destructioneffects");
		{deleteVehicle _x;} count (allMissionObjects "#particlesource");
		{deleteVehicle _x;} count (allMissionObjects "#slop");
		{deleteVehicle _x;} count (allMissionObjects "#mark");
		{deleteVehicle _x;} count (allMissionObjects "#track");
		{deleteVehicle _x;} count (allMissionObjects "#crater");
		{deleteVehicle _x;} count (allMissionObjects "#crateronvehicle");
		{deleteVehicle _x;} count (allMissionObjects "#explosion");
		{deleteVehicle _x;} count (allMissionObjects "#objectdestructed");
		{if ((count units _x) == 0) then {deleteGroup _x;};} count allGroups;

		sleep 1;
		currentAO =  leselector;  
		_dropZone = currentAO;
		_AOpos = getMarkerPos currentAO; 

		sleep 1;
		/*
		switch (currentAO) do {
			case "LIVADI": {_lavraiposition = [18015.2,8050.68,4.19617e-005];
							_lavraidirec = 328.022;
							[_lavraiposition,_lavraidirec,leselector] remoteExecCall ["NAK_fnc_vbnet3", 2, false]; 
							
			};
			case "TRACHIA": { 
							
							_lavraiposition = [22415.8,8760.68,0.000225067];
							_lavraidirec = 145.313;
							[_lavraiposition,_lavraidirec,leselector] remoteExecCall ["NAK_fnc_vbnet3", 2, false]; 
							 
			};
			case "OCHROLIMNI": {
							
							_lavraiposition = [23597.1,15542,0.000259399];
							_lavraidirec = 297.448;
							[_lavraiposition,_lavraidirec,leselector] remoteExecCall ["NAK_fnc_vbnet3", 2, false]; 
							 
			};
			case "MAZI_BAY": {      
							
							_lavraiposition = [22209.1,5933.02,-0.144613];
							_lavraidirec = 0;
							[_lavraiposition,_lavraidirec,leselector] remoteExecCall ["NAK_fnc_vbnet3", 2, false]; 
			};
			case "IRAKIA": {  
							
							_lavraiposition = [21662.4,20624.4,0.000293732];
							_lavraidirec = 77.231;
							[_lavraiposition,_lavraidirec,leselector] remoteExecCall ["NAK_fnc_vbnet3", 2, false]; 
			};
			case "FARONAKI": { 
							
							_lavraiposition = [14799.6,11614,3.05176e-005];
							_lavraidirec = 49.481;
							[_lavraiposition,_lavraidirec,leselector] remoteExecCall ["NAK_fnc_vbnet3", 2, false]; 
			};
			case "FAROS": {
							
							_lavraiposition = [6261.76,23008.8,9.53674e-005];
							_lavraidirec = 236.934;
							[_lavraiposition,_lavraidirec,leselector] remoteExecCall ["NAK_fnc_vbnet3", 2, false]; 
			};
			case "EDESSA": {  
							 
							_lavraiposition = [7097.07,10598.8,-0.000442505];
							_lavraidirec = 112.04;
							[_lavraiposition,_lavraidirec,leselector] remoteExecCall ["NAK_fnc_vbnet3", 2, false]; 
			};
			case "DRIMEA": {
							
							_lavraiposition = [11329.7,10480.5,-0.000249863];
							_lavraidirec = 209.451;
							[_lavraiposition,_lavraidirec,leselector] remoteExecCall ["NAK_fnc_vbnet3", 2, false]; 
			};
			case "CAP_MAKRINOS": {      
							 
							_lavraiposition = [14169.7,6327.25,-3.48091e-005];
							_lavraidirec = 10.511;
							[_lavraiposition,_lavraidirec,leselector] remoteExecCall ["NAK_fnc_vbnet3", 2, false]; 
			};
			case "CAP_KATEGISDIS": {
							 
							_lavraiposition = [22981.3,13019.5,-0.000236511];
							_lavraidirec = 66.477;
							[_lavraiposition,_lavraidirec,leselector] remoteExecCall ["NAK_fnc_vbnet3", 2, false]; 
			};
			case "BOMOS": { 
							
							_lavraiposition = [2438.06,21790.1,-3.43323e-005];
							_lavraidirec = 289.222;
							[_lavraiposition,_lavraidirec,leselector] remoteExecCall ["NAK_fnc_vbnet3", 2, false]; 
			};
			case "AKTINARKI": {
							 
							_lavraiposition = [21692.4,10623.8,0.000275612];
							_lavraidirec = 214.355;
							[_lavraiposition,_lavraidirec,leselector] remoteExecCall ["NAK_fnc_vbnet3", 2, false]; 

			};
			case "LIVADI": { 
							 
							_lavraiposition = [18015.2,8050.68,4.19617e-005];
							_lavraidirec = 328.022;
							[_lavraiposition,_lavraidirec,leselector] remoteExecCall ["NAK_fnc_vbnet3", 2, false]; 
			};
		};
			*/
		for "_x" from SIXBUFFER to 3 do {
				
				private  _spawnPos =[_AOpos, 10, 600, SEVENBUFFER, FIVEBUFFER, FOURBUFFER, FIVEBUFFER] call BIS_fnc_findSafePos;
				private  _flatPos = _spawnPos isFlatEmpty[SEVENBUFFER, SIXBUFFER, EIGHTBUFFER, THHIRDDBUFFER, FIVEBUFFER, false];

				while {(count _flatPos) < SIXBUFFER} do {
					_spawnPos = [_AOpos, 10, 600, SEVENBUFFER, FIVEBUFFER, FOURBUFFER, FIVEBUFFER] call BIS_fnc_findSafePos;
					_flatPos = _spawnPos isFlatEmpty[SEVENBUFFER, SIXBUFFER, EIGHTBUFFER, THHIRDDBUFFER, FIVEBUFFER, false];
				};
				private _infantryGroup = createGroup [resistance, true]; 
				for "_x" from 1 to 6 do {
					private _squadPos = [[[_flatPos, 10], []], ["water", "out"]] call BIS_fnc_randomPos;
					_unitArray = (missionconfigfile >> "unitList" >> "CSAT" >> "units") call BIS_fnc_getCfgData;
				_unit = selectRandom _unitArray;        _grpMember = _infantryGroup createUnit [_unit, _squadPos, [], 0, "FORM"];
					sleep 1;	
				};
				[_infantryGroup, _AOpos, 200] call bis_fnc_taskPatrol;
				_infantryGroup enableDynamicSimulation true;
				{
					spawnedUnits pushBack _x;
				} foreach (units _infantryGroup);
			};
			for "_x" from SIXBUFFER to 3 do {
				
				private  _spawnPos =[_AOpos, 10, 600, SEVENBUFFER, FIVEBUFFER, FOURBUFFER, FIVEBUFFER] call BIS_fnc_findSafePos;
				private  _flatPos = _spawnPos isFlatEmpty[SEVENBUFFER, SIXBUFFER, EIGHTBUFFER, THHIRDDBUFFER, FIVEBUFFER, false];

				while {(count _flatPos) < SIXBUFFER} do {
					_spawnPos = [_AOpos, 10, 600, SEVENBUFFER, FIVEBUFFER, FOURBUFFER, FIVEBUFFER] call BIS_fnc_findSafePos;
					_flatPos = _spawnPos isFlatEmpty[SEVENBUFFER, SIXBUFFER, EIGHTBUFFER, THHIRDDBUFFER, FIVEBUFFER, false];
				};
				private _infantryGroup = createGroup [resistance, true]; 
				for "_x" from 1 to 6 do {
					private _squadPos = [[[_flatPos, 10], []], ["water", "out"]] call BIS_fnc_randomPos;
					_unitArray = (missionconfigfile >> "unitList" >> "CSAT" >> "units") call BIS_fnc_getCfgData;
				_unit = selectRandom _unitArray;        _grpMember = _infantryGroup createUnit [_unit, _squadPos, [], 0, "FORM"];
					sleep 1;	
				};
				[_infantryGroup, _AOpos, 200] call bis_fnc_taskPatrol;
				_infantryGroup enableDynamicSimulation true;
				{
					spawnedUnits pushBack _x;
				} foreach (units _infantryGroup);
			};

		//////////////////////////////////////////////////////////VEHICLUE///////////////////////////////////////////////////////
		for "_x" from 1 to 4  do {
			private _randomPos = [[[_AOpos, 1000], []], ["water", "out"]] call BIS_fnc_randomPos;
			private _AAVehicle = (selectRandom tankdl) createVehicle _randomPos;
			_AAVehicle allowCrewInImmobile true;
			_AAVehicle lock 2;
			private    _grp1 = createGroup [east, true];
			[_AAVehicle,_grp1,"CSAT"] call NAK_fnc_createCrew;
			spawnedUnits pushBack _AAVehicle;
			{
				spawnedUnits pushBack _x;
			} foreach (crew _AAVehicle);
			private _group = group _AAVehicle;
			[_group, _AOpos, 800] call BIS_fnc_taskPatrol;  
			sleep 0.5;
		};

		if (true) then {
			for "_x" from 1 to 3 do {
				private _randomPos = [[[_AOpos, 1000], []], ["water", "out"]] call BIS_fnc_randomPos;
				private _MRAP = (selectRandom AAVehicleList) createVehicle _randompos;
				_MRAP allowCrewInImmobile true;
				_MRAP lock 2;
				private    _grp1 = createGroup [east, true];
				[_MRAP,_grp1,"CSAT"] call NAK_fnc_createCrew;
				spawnedUnits pushBack _MRAP;   
				{
					spawnedUnits pushBack _x;
				} foreach (crew _MRAP);
				private _group = group _MRAP;
				[_group, _AOpos,800] call BIS_fnc_taskPatrol;   
				sleep 0.5;
			};
		};


		if (true) then {
				for "_x" from 1 to 3 do {
					private _randomPos = [[[_AOpos, 1000], []], ["water", "out"]] call BIS_fnc_randomPos;
					private _vehc = (selectRandom RandomVehicleList) createVehicle _randompos;

					_vehc allowCrewInImmobile true;
					_vehc lock 2;
					private _grp1 = createGroup [east, true];
					[_vehc,_grp1,"CSAT"] call NAK_fnc_createCrew;
					spawnedUnits pushBack _vehc;  
					{
						spawnedUnits pushBack _x;
					} foreach (crew _vehc);
					private _group = group _vehc;

					[_group, _AOpos,800] call BIS_fnc_taskPatrol;  
				
					sleep 0.5;
				};
		};
		////////////////////////////////////////////////////////////////////END/////////////////////////////////////////////////////////////////////////
		if(true) then {
			private _airGroup = createGroup [east, true];
			private _randomPos =  [_AOpos, BUFFER, JESSIBUFFER, SEVENBUFFER, FIVEBUFFER, FOURBUFFER, FIVEBUFFER] call BIS_fnc_findSafePos;
			private _air = selectRandom ["O_Heli_Attack_02_dynamicLoadout_F","I_Heli_light_03_dynamicLoadout_F","O_Heli_Light_02_dynamicLoadout_F","O_Heli_Attack_02_dynamicLoadout_F"] createVehicle [_randomPos select FIVEBUFFER,_randomPos select SIXBUFFER,CLAWSBUFFER];
			waitUntil{!isNull _air};
			_air engineOn true;
			_air setPos [_randomPos select FIVEBUFFER,_randomPos select SIXBUFFER,AUSTINBUFFER];
			_air spawn
			{
				private["_x"];
				for [{_x=FIVEBUFFER},{_x<=HOUSTONBUFFER},{_x=_x+SIXBUFFER}] do
				{
					_this setVelocity [FIVEBUFFER,FIVEBUFFER,FIVEBUFFER];
					sleep SIXBUFFER;
				};
			};
			"O_helipilot_F" createUnit [_randomPos,_airGroup];
			((units _airGroup) select FIVEBUFFER) assignAsDriver _air;
			((units _airGroup) select FIVEBUFFER) moveInDriver _air;
			"O_helipilot_F" createUnit [_randomPos,_airGroup];
			((units _airGroup) select SIXBUFFER) assignAsGunner _air;
			((units _airGroup) select SIXBUFFER) moveInGunner _air;
			spawnedUnits pushBack _air;
			{
				spawnedUnits pushBack _x;
			} foreach (crew _air);
			private _group = group _air;
			[_airGroup, _AOpos, ROCKYBUFFER] call BIS_fnc_taskPatrol;
			_air flyInHeight AUSTINBUFFER;
			_airGroup setCombatMode "RED";
			_air lock SEVENBUFFER;
		};

		{
			_x setSkill ["general", 1];
			_x setSkill ["aimingAccuracy", 0.8];
			_x setSkill ["aimingShake", 0.3];
			_x setSkill ["aimingSpeed", 0.7];
			_x setSkill ["spotDistance", 1];
			_x setSkill ["spotTime", 1];
			_x setSkill ["courage", 1];
			_x setSkill ["reloadSpeed", 0.5];
			_x setSkill ["commanding", 1];
		} foreach AISkillUnitsArray;

		badmainMissionTreshold = createTrigger ["EmptyDetector", getMarkerPos currentAO];
		badmainMissionTreshold setTriggerArea [900, 900, FIVEBUFFER, false];
		badmainMissionTreshold setTriggerActivation ["EAST", "PRESENT", false];
		badmainMissionTreshold setTriggerStatements ["this","",""];

	    {_x setMarkerPos (getMarkerPos currentAO);} forEach ["aoCircle","aoMarker"];
		{_x setMarkerText currentAO;} forEach ["aoMarker"];
		_mainAoTaskName = format
			[
			"Take %1",
				currentAO
			];
		_mainAoTaskDesc = format
			[
			"Clear %1 of hostile forces.",
				currentAO
			];
		[west,["MainAoTask"],[_mainAoTaskDesc,_mainAoTaskName,currentAO],(getMarkerPos currentAO),FIVEBUFFER,FIVEBUFFER,true,"attack",true] call BIS_fnc_taskCreate;

		_targetStartText = format
		[
			"<img size='7' image='Media\images\nakcommand.paa'/><br/><t align='center' size='2.2' color='#FF0000'>New Target</t><br/><t size='1.5' align='center' color='#FFCF11'>%1</t><br/>____________________<br/>Good work on that last OP. we want to see the same again. We have a new objective for you. High Command has decided that %1 is of strategic value.<br/><br/><t color='#FFCF11' >Don't Forget to Clear all Buildings Inside the AO.</t>",
			currentAO
		];
		[_targetStartText] remoteExec ["NAK_fnc_globalHint", -2, false];

		
	/*	if (currentAO in leboatao) then {
		_letext15 = "Secure The USS Liberty";
		sleep 1;
		"matrix_4" setMarkerPos _lavraiposition;
		"matrix_4" setMarkerText _letext15;
		[west,["aoTask15"],["Clear and Secure The USS Liberty","Secure The USS Liberty","matrix_4"],(_lavraiposition),0,1,true,"boat",true] call BIS_fnc_taskCreate;
		};*/


		if (true) then {
		private _group = createGroup EAST;
		for "_x" from SIXBUFFER to 8 do {
			_unitArray = (missionconfigfile >> "unitList" >> "CSATTropic" >> "specialForces") call BIS_fnc_getCfgData;
			_unit = _unitArray call BIS_fnc_selectRandom;
			_grpMember = _group createUnit [_unit, _AOpos, [], FIVEBUFFER, "FORM"];
			// _grpMember enableDynamicSimulation true;
		};
		returnedUnits = [_AOpos, nil, (units _group), (300), MAMANBUFFER, false] call NAK_fnc_AIOccupyBuilding;

		{ deleteVehicle _x } foreach returnedUnits;
		{
			spawnedunits pushBack _x;
			AISkillUnitsArray pushBack _x;
		} foreach (units _group);
		};
		////////////////////////////////////
		if (true) then {
			private _milBuildings = nearestObjects [_AOpos, MilitaryBuildings, (300)];
			_milBuildingCount = count _milBuildings;
			if (_milBuildingCount > FIVEBUFFER ) then {

					private _group = createGroup EAST;
					for "_x" from SIXBUFFER to 7 do {
						_unitArray = (missionconfigfile >> "unitList" >> "CSAT" >> "units") call BIS_fnc_getCfgData;
						_unit = _unitArray call BIS_fnc_selectRandom;
						_grpMember = _group createUnit [_unit, _AOpos, [], FIVEBUFFER, "FORM"];
					};
					returnedUnits= [_AOpos, MilitaryBuildings, (units _group), (300), MAMANBUFFER, false] call NAK_fnc_AIOccupyBuilding;

					{ deleteVehicle _x } foreach returnedUnits;

					{
						spawnedunits pushBack _x;
						AISkillUnitsArray pushBack _x;
					} foreach (units _group);
			};
		};
		
		
		_lesvraiscon = selectRandom [1,2];
		switch (_lesvraiscon) do {
			case 1: {

			private  _spawnPos =[(getMarkerPos currentAO), 10, 700, SEVENBUFFER, FIVEBUFFER, FOURBUFFER, FIVEBUFFER] call BIS_fnc_findSafePos;
			private  _flatPos = _spawnPos isFlatEmpty[SEVENBUFFER, SIXBUFFER, EIGHTBUFFER, THHIRDDBUFFER, FIVEBUFFER, false];

			while {(count _flatPos) < SIXBUFFER} do {
			_spawnPos = [(getMarkerPos currentAO), 10, 700, SEVENBUFFER, FIVEBUFFER, FOURBUFFER, FIVEBUFFER] call BIS_fnc_findSafePos;
			_flatPos = _spawnPos isFlatEmpty[SEVENBUFFER, SIXBUFFER, EIGHTBUFFER, THHIRDDBUFFER, FIVEBUFFER, false];
			};


			private _objPos = [_flatPos, 25, 35, 10, 0, 0.5, 0] call BIS_fnc_findSafePos;
			private	_flatPos1 = [(_flatPos select 0) - 2, (_flatPos select 1) - 2, (_flatPos select 2)];
			private	_flatPos2 = [(_flatPos select 0) + 2, (_flatPos select 1) + 2, (_flatPos select 2)];
			private	_flatPos3 = [(_flatPos select 0) + 4, (_flatPos select 1) + 4, (_flatPos select 2)];
			private	_flatPos4 = [(_flatPos select 0) + 5, (_flatPos select 1) + 5, (_flatPos select 2)];
			

				
				if (true) then {
				
						private _group = createGroup EAST;
						for "_x" from SIXBUFFER to 8 do {
							_unitArray = (missionconfigfile >> "unitList" >> "CSATTropic" >> "specialForces") call BIS_fnc_getCfgData;
							_unit = _unitArray call BIS_fnc_selectRandom;
							_grpMember = _group createUnit [_unit, _flatPos1, [], FIVEBUFFER, "FORM"];
							// _grpMember enableDynamicSimulation true;
						};
						returnedUnits = [_flatPos1, nil, (units _group), (300), MAMANBUFFER, false] call NAK_fnc_AIOccupyBuilding;

						{ deleteVehicle _x } foreach returnedUnits;
						{
							spawnedunits pushBack _x;
							AISkillUnitsArray pushBack _x;
						} foreach (units _group);
				};
				////////////////////////////////////
					if (true) then {
					private _milBuildings = nearestObjects [_flatPos1, MilitaryBuildings, (300)];

					_milBuildingCount = count _milBuildings;
					if (_milBuildingCount > FIVEBUFFER ) then {

							private _group = createGroup EAST;
							for "_x" from SIXBUFFER to 7 do {
								_unitArray = (missionconfigfile >> "unitList" >> "CSAT" >> "units") call BIS_fnc_getCfgData;
								_unit = _unitArray call BIS_fnc_selectRandom;
								_grpMember = _group createUnit [_unit, _flatPos1, [], FIVEBUFFER, "FORM"];
							};
							returnedUnits= [_flatPos1, MilitaryBuildings, (units _group), (300), MAMANBUFFER, false] call NAK_fnc_AIOccupyBuilding;

							{ deleteVehicle _x } foreach returnedUnits;

							{
								spawnedunits pushBack _x;
								AISkillUnitsArray pushBack _x;
							} foreach (units _group);
					};
				};

			_randomDir = (random 360);
			hangar1 = "CamoNet_OPFOR_big_F" createVehicle _flatPos;
			waitUntil {!isNull hangar1};
			hangar1 setPos [(getPos hangar1 select 0), (getPos hangar1 select 1), ((getPos hangar1 select 2) - 1)];
			sideObj1 =  "Land_Device_disassembled_F" createVehicle _flatPos;
			

			barrel1 = "Land_MetalBarrel_F" createVehicle _flatPos1;
			barrel2 = "Land_MetalBarrel_F" createVehicle _flatPos2;
			barrel3 = "Land_MetalBarrel_F" createVehicle _flatPos3;


			barrel1 attachTo [sideObj1, [-1.681,-1.218,-0.481] ];
			barrel2 attachTo [sideObj1, [0.416,-2.5,-0.466] ];
			barrel3 attachTo [sideObj1, [1.587,-1.273,-0.422] ];

			cbarrel1 = "PortableHelipadLight_01_red_F" createVehicle _flatPos1;
			cbarrel2 = "PortableHelipadLight_01_red_F" createVehicle _flatPos2;
			cbarrel3 = "PortableHelipadLight_01_red_F" createVehicle _flatPos3;

			cbarrel1 attachTo [barrel1, [-0.049,-0.096,0.461] ];
			cbarrel2 attachTo [barrel2, [-0.049,-0.096,0.461] ];
			cbarrel3 attachTo [barrel3, [-0.049,-0.096,0.461] ];

			
			lcbarrel1 = "DemoCharge_F" createVehicle _flatPos1;
			lcbarrel2 = "DemoCharge_F" createVehicle _flatPos2;
			lcbarrel3 = "DemoCharge_F" createVehicle _flatPos3;

			lcbarrel1 attachTo [barrel1, [0.089,0.17,0.454] ];
			lcbarrel2 attachTo [barrel2, [0.089,0.17,0.454] ];
			lcbarrel3 attachTo [barrel3, [0.089,0.17,0.454] ];

					for "_x" from 0 to 12 do {
					private _mine = createMine [(selectRandom ["APERSBoundingMine","BombCluster_02_UXO2_F","BombCluster_02_UXO3_F","BombCluster_03_UXO2_F","BombCluster_03_UXO4_F","BombCluster_02_UXO4_F","BombCluster_02_UXO1_F"]), ( getPos sideObj1), [], 20];
						east revealMine _mine;
						};

				[
				sideObj1,                                                                           // Object the action is attached to
				"Defuse the Bomb",                                                                       // Title of the action
				"Media\images\taker_ca.paa",                      // Idle icon shown on screen
				"Media\images\leskull_ca.paa",                      // Progress icon shown on screen
				"player distance _target < 6",                                                        // Condition for the action to be shown
				"player distance _target < 6",                                                      // Condition for the action to progress
				{},                                                                                  // Code executed when action starts
				{},                                                                                  // Code executed on every progress tick
				{ _null = [] execVM "Scripts\vehicle\lecaller\DEFUSE\defuseAction.sqf"; },                                  // Code executed on completion
				{},                                                                                  // Code executed on interrupted
				[],                                                                                  // Arguments passed to the scripts as _this select 3
				7,                                                                                  // Action duration [s]
				0,                                                                                   // Priority
				false,                                                                                // Remove on completion
				false                                                                                // Show in unconscious state 
				] remoteExec ["BIS_fnc_holdActionAdd",0,sideObj1];   

				waitUntil {!isNull sideObj1};
				{_x setDir _randomDir} forEach [sideObj1,hangar1];
				sideObj1 lock 3;


				for "_x" from SIXBUFFER to 2 do {
				
				private  _spawnPos =[_flatPos4, 10, 300, SEVENBUFFER, FIVEBUFFER, FOURBUFFER, FIVEBUFFER] call BIS_fnc_findSafePos;
				private  _flatPos = _spawnPos isFlatEmpty[SEVENBUFFER, SIXBUFFER, EIGHTBUFFER, THHIRDDBUFFER, FIVEBUFFER, false];

				while {(count _flatPos) < SIXBUFFER} do {
					_spawnPos = [_flatPos4, 10, 300, SEVENBUFFER, FIVEBUFFER, FOURBUFFER, FIVEBUFFER] call BIS_fnc_findSafePos;
					_flatPos = _spawnPos isFlatEmpty[SEVENBUFFER, SIXBUFFER, EIGHTBUFFER, THHIRDDBUFFER, FIVEBUFFER, false];
				};
				private _infantryGroup = createGroup [resistance, true]; 
				for "_x" from 1 to 6 do {
					private _squadPos = [[[_flatPos, 10], []], ["water", "out"]] call BIS_fnc_randomPos;
					_unitArray = (missionconfigfile >> "unitList" >> "CSAT" >> "units") call BIS_fnc_getCfgData;
				_unit = selectRandom _unitArray;        _grpMember = _infantryGroup createUnit [_unit, _squadPos, [], 0, "FORM"];
					sleep 1;	
				};
				[_infantryGroup, _flatPos1, 200] call bis_fnc_taskPatrol;
				_infantryGroup enableDynamicSimulation true;
				{
					spawnedUnits pushBack _x;
				} foreach (units _infantryGroup);
			};
			/////////////////////////////////aii//////////////////////
			private _fuzzyPos1 = [((_flatPos select 0) - 200) + (random 300),((_flatPos select 1) - 200) + (random 300),0];

				for "_x" from SIXBUFFER to 2 do {
					private  _spawnPos =[_flatPos, 50, 300, SEVENBUFFER, FIVEBUFFER, FOURBUFFER, FIVEBUFFER] call BIS_fnc_findSafePos;
					private  _flatPos = _spawnPos isFlatEmpty[SEVENBUFFER, SIXBUFFER, EIGHTBUFFER, THHIRDDBUFFER, FIVEBUFFER, false];

						while {(count _flatPos) < SIXBUFFER} do {
							_spawnPos =[_flatPos, 50, 300, SEVENBUFFER, FIVEBUFFER, FOURBUFFER, FIVEBUFFER] call BIS_fnc_findSafePos;
							_flatPos = _spawnPos isFlatEmpty[SEVENBUFFER, SIXBUFFER, EIGHTBUFFER, THHIRDDBUFFER, FIVEBUFFER, false];
					};

					private _infantryGroup = [_flatPos, EAST, (configfile >> "CfgGroups" >> "East" >> "OPF_F" >> "Infantry" >> selectRandom ["OI_reconTeam","OIA_InfAssault","OIA_InfSquad","OIA_InfSquad_Weapons","OIA_InfTeam_AA","OIA_ReconSquad"])] call BIS_fnc_spawnGroup;

					{
						spawnedUnitss pushBack _x;
						AISkillUnitsArray pushBack _x;
					} foreach (units _infantryGroup);
					[_infantryGroup, _flatPos1, 200] call bis_fnc_taskPatrol;
			};


			[west,["aoTask1"],["Find the code and defuse the bomb before it explodes.. Be careful","Defuse the bomb","matrix"],(_fuzzyPos1),0,2,true,"mine",true] call BIS_fnc_taskCreate;

			_letext1 = "Defuse the bomb";
			sleep 1;
			"matrix" setMarkerPos _fuzzyPos1;
			"matrix" setMarkerText _letext1;
			sleep 10;

			////////////////////////////////////////////2//////////////scientist scuker//////////////////////////


			private  _spawnPos =[(getMarkerPos currentAO), 10, 700, SEVENBUFFER, FIVEBUFFER, FOURBUFFER, FIVEBUFFER] call BIS_fnc_findSafePos;
			private  _flatPos = _spawnPos isFlatEmpty[SEVENBUFFER, SIXBUFFER, EIGHTBUFFER, THHIRDDBUFFER, FIVEBUFFER, false];

			while {(count _flatPos) < SIXBUFFER} do {
			_spawnPos = [(getMarkerPos currentAO), 10, 700, SEVENBUFFER, FIVEBUFFER, FOURBUFFER, FIVEBUFFER] call BIS_fnc_findSafePos;
			_flatPos = _spawnPos isFlatEmpty[SEVENBUFFER, SIXBUFFER, EIGHTBUFFER, THHIRDDBUFFER, FIVEBUFFER, false];
			};




			private	_flatPos1 = [(_flatPos select 0) - 2, (_flatPos select 1) - 2, (_flatPos select 2)];
			private	_flatPos2 = [(_flatPos select 0) + 2, (_flatPos select 1) + 2, (_flatPos select 2)];

			// Create Objective Tank ------------------------
			_objPos = _flatPos;

			


			if (true) then { 
					private _sniperGroup = createGroup [resistance, true]; 
					lesciengrpMember = _sniperGroup createUnit ["C_scientist_F", _flatPos1 , [], 0, "FORM"]; 
					lesciengrpMember setPosATL _flatPos1;
					
					[
					lesciengrpMember,                                                                           // Object the action is attached to
					"Interrogate The Scientist",                                                                       // Title of the action
					"Media\images\taker_ca.paa",                      // Idle icon shown on screen
					"Media\images\leskull_ca.paa",                      // Progress icon shown on screen
					"player distance _target < 6",                                                        // Condition for the action to be shown
					"player distance _target < 6",                                                      // Condition for the action to progress
					{},                                                                                  // Code executed when action starts
					{},                                                                                  // Code executed on every progress tick
					{ _null = [] execVM "Scripts\vehicle\lecaller\DEFUSE\searchActionkeypad.sqf"; },     // Code executed on completion
					{},                                                                                  // Code executed on interrupted
					[],                                                                                  // Arguments passed to the scripts as _this select 3
					7,                                                                                  // Action duration [s]
					0,                                                                                   // Priority
					true,                                                                                // Remove on completion
					false                                                                                // Show in unconscious state 
					] remoteExec ["BIS_fnc_holdActionAdd",0,lesciengrpMember];  
					
					_sniperGroup setFormDir (random 360);   
					lesciengrpMember disableAI "PATH";    
				}; 

				
				if (true) then {
				
						private _group = createGroup EAST;
						for "_x" from SIXBUFFER to 8 do {
							_unitArray = (missionconfigfile >> "unitList" >> "CSATTropic" >> "specialForces") call BIS_fnc_getCfgData;
							_unit = _unitArray call BIS_fnc_selectRandom;
							_grpMember = _group createUnit [_unit, _flatPos1, [], FIVEBUFFER, "FORM"];
							// _grpMember enableDynamicSimulation true;
						};
						returnedUnits = [_flatPos1, nil, (units _group), (300), MAMANBUFFER, false] call NAK_fnc_AIOccupyBuilding;

						{ deleteVehicle _x } foreach returnedUnits;
						{
							spawnedunits pushBack _x;
							AISkillUnitsArray pushBack _x;
						} foreach (units _group);
				};
				////////////////////////////////////
					if (true) then {
					private _milBuildings = nearestObjects [_flatPos1, MilitaryBuildings, (300)];

					_milBuildingCount = count _milBuildings;
					if (_milBuildingCount > FIVEBUFFER ) then {

							private _group = createGroup EAST;
							for "_x" from SIXBUFFER to 7 do {
								_unitArray = (missionconfigfile >> "unitList" >> "CSAT" >> "units") call BIS_fnc_getCfgData;
								_unit = _unitArray call BIS_fnc_selectRandom;
								_grpMember = _group createUnit [_unit, _flatPos1, [], FIVEBUFFER, "FORM"];
							};
							returnedUnits= [_flatPos1, MilitaryBuildings, (units _group), (300), MAMANBUFFER, false] call NAK_fnc_AIOccupyBuilding;

							{ deleteVehicle _x } foreach returnedUnits;

							{
								spawnedunits pushBack _x;
								AISkillUnitsArray pushBack _x;
							} foreach (units _group);
					};
				};

			// Spawn SM Forces --------------------------------
			_radiusSize = 300;
			_smPos = _flatPos;

			
				for "_x" from SIXBUFFER to 2 do {
				
				private  _spawnPos =[_flatPos1, 10, 300, SEVENBUFFER, FIVEBUFFER, FOURBUFFER, FIVEBUFFER] call BIS_fnc_findSafePos;
				private  _flatPos = _spawnPos isFlatEmpty[SEVENBUFFER, SIXBUFFER, EIGHTBUFFER, THHIRDDBUFFER, FIVEBUFFER, false];

				while {(count _flatPos) < SIXBUFFER} do {
					_spawnPos = [_flatPos1, 10, 300, SEVENBUFFER, FIVEBUFFER, FOURBUFFER, FIVEBUFFER] call BIS_fnc_findSafePos;
					_flatPos = _spawnPos isFlatEmpty[SEVENBUFFER, SIXBUFFER, EIGHTBUFFER, THHIRDDBUFFER, FIVEBUFFER, false];
				};
				private _infantryGroup = createGroup [resistance, true]; 
				for "_x" from 1 to 6 do {
					private _squadPos = [[[_flatPos, 10], []], ["water", "out"]] call BIS_fnc_randomPos;
					_unitArray = (missionconfigfile >> "unitList" >> "CSAT" >> "units") call BIS_fnc_getCfgData;
				_unit = selectRandom _unitArray;        _grpMember = _infantryGroup createUnit [_unit, _squadPos, [], 0, "FORM"];
					sleep 1;	
				};
				[_infantryGroup, _flatPos1, 200] call bis_fnc_taskPatrol;
				_infantryGroup enableDynamicSimulation true;
				{
					spawnedUnits pushBack _x;
				} foreach (units _infantryGroup);
			};
			/////////////////////////////////aii//////////////////////
			private _fuzzyPos1 = [((_flatPos select 0) - 200) + (random 300),((_flatPos select 1) - 200) + (random 300),0];

				for "_x" from SIXBUFFER to 2 do {
					private  _spawnPos =[_flatPos, 50, 300, SEVENBUFFER, FIVEBUFFER, FOURBUFFER, FIVEBUFFER] call BIS_fnc_findSafePos;
					private  _flatPos = _spawnPos isFlatEmpty[SEVENBUFFER, SIXBUFFER, EIGHTBUFFER, THHIRDDBUFFER, FIVEBUFFER, false];

						while {(count _flatPos) < SIXBUFFER} do {
							_spawnPos =[_flatPos, 50, 300, SEVENBUFFER, FIVEBUFFER, FOURBUFFER, FIVEBUFFER] call BIS_fnc_findSafePos;
							_flatPos = _spawnPos isFlatEmpty[SEVENBUFFER, SIXBUFFER, EIGHTBUFFER, THHIRDDBUFFER, FIVEBUFFER, false];
					};

					private _infantryGroup = [_flatPos, EAST, (configfile >> "CfgGroups" >> "East" >> "OPF_F" >> "Infantry" >> selectRandom ["OI_reconTeam","OIA_InfAssault","OIA_InfSquad","OIA_InfSquad_Weapons","OIA_InfTeam_AA","OIA_ReconSquad"])] call BIS_fnc_spawnGroup;

					{
						spawnedUnitss pushBack _x;
						AISkillUnitsArray pushBack _x;
					} foreach (units _infantryGroup);
					[_infantryGroup, _flatPos1, 200] call bis_fnc_taskPatrol;
			};

			private _fuzzyPos1 = [((_flatPos select 0) - 200) + (random 300),((_flatPos select 1) - 200) + (random 300),0];


			[west,["aoTask4"],["Interrogate The Scientist and retrive the bomb passcode","Interrogate The Scientist","matrix_1"],(_fuzzyPos1),0,3,true,"run",true] call BIS_fnc_taskCreate;

			_letext2 = "Interrogate The Scientist";
			sleep 1;
			"matrix_1" setMarkerPos _fuzzyPos1;
			"matrix_1" setMarkerText _letext2;
			sleep 10;

			////////////////////////////////end scientist//////////////////////////////////////

			///////////////////////////////////////////////////

			private  _spawnPos =[(getMarkerPos currentAO), 10, 700, SEVENBUFFER, FIVEBUFFER, FOURBUFFER, FIVEBUFFER] call BIS_fnc_findSafePos;
			private  _flatPos = _spawnPos isFlatEmpty[SEVENBUFFER, SIXBUFFER, EIGHTBUFFER, THHIRDDBUFFER, FIVEBUFFER, false];

			while {(count _flatPos) < SIXBUFFER} do {
			_spawnPos = [(getMarkerPos currentAO), 10, 700, SEVENBUFFER, FIVEBUFFER, FOURBUFFER, FIVEBUFFER] call BIS_fnc_findSafePos;
			_flatPos = _spawnPos isFlatEmpty[SEVENBUFFER, SIXBUFFER, EIGHTBUFFER, THHIRDDBUFFER, FIVEBUFFER, false];
			};




				private _flatPos1 = [(_flatPos select 0) - 2, (_flatPos select 1) - 2, (_flatPos select 2)];
				private _flatPos2 = [(_flatPos select 0) + 2, (_flatPos select 1) + 2, (_flatPos select 2)];

			// Create Objective Tank ------------------------
			_objPos = _flatPos;


			if (true) then {
			_grp1 = createGroup [resistance, true];
			protoTank = createVehicle ["O_MBT_02_arty_F", _flatPos1,[],0,"NONE"];
			[protoTank,_grp1] call BIS_fnc_spawnCrew;
			{_x lock 3;_x allowCrewInImmobile true;} forEach [protoTank];
			[_grp1, _flatPos1, 200] call bis_fnc_taskPatrol;};


			if (true) then {
			_grp2 = createGroup [resistance, true];
			protoTank1 = createVehicle ["I_Truck_02_MRL_F", _flatPos2,[],0,"NONE"];
			[protoTank1,_grp2] call BIS_fnc_spawnCrew;
			{_x lock 3;_x allowCrewInImmobile true;} forEach [protoTank1];
			[_grp2, _flatPos2, 200] call bis_fnc_taskPatrol;};
			// Spawn SM Forces --------------------------------
			_radiusSize = 300;
			_smPos = _flatPos;

			protoTank addEventHandler ["Fired",{if (!isPlayer (gunner protoTank)) then { protoTank setVehicleAmmo 1; };}];
			protoTank1 addEventHandler ["Fired",{if (!isPlayer (gunner protoTank1)) then { protoTank1 setVehicleAmmo 1; };}];

			sleep 1;


				//---------- OBJ 1
				
					protoTank setVariable ["selections", []];
					protoTank setVariable ["gethit", []];
					protoTank addEventHandler
					[
						"HandleDamage",
						{
							_unit = _this select 0;
							_selections = _unit getVariable ["selections", []];
							_gethit = _unit getVariable ["gethit", []];
							_selection = _this select 1;
							if !(_selection in _selections) then
							{
								_selections set [count _selections, _selection];
								_gethit set [count _gethit, 0];
							};
							_i = _selections find _selection;
							_olddamage = _gethit select _i;
							_damage = _olddamage + ((_this select 2) - _olddamage) * 0.25;
							_gethit set [_i, _damage];
							_damage;
						}
					];
				
				//---------- OBJ 2
				
					protoTank1 setVariable ["selections", []];
					protoTank1 setVariable ["gethit", []];
					protoTank1 addEventHandler
					[
						"HandleDamage",
						{
							_unit = _this select 0;
							_selections = _unit getVariable ["selections", []];
							_gethit = _unit getVariable ["gethit", []];
							_selection = _this select 1;
							if !(_selection in _selections) then
							{
								_selections set [count _selections, _selection];
								_gethit set [count _gethit, 0];
							};
							_i = _selections find _selection;
							_olddamage = _gethit select _i;
							_damage = _olddamage + ((_this select 2) - _olddamage) * 0.25;
							_gethit set [_i, _damage];
							_damage;
						}
					];
			//-------------------- 5. SPAWN FORCE PROTECTION

				sleep 1;

	
				for "_x" from SIXBUFFER to 2 do {
				
				private  _spawnPos =[_flatPos1, 10, 300, SEVENBUFFER, FIVEBUFFER, FOURBUFFER, FIVEBUFFER] call BIS_fnc_findSafePos;
				private  _flatPos = _spawnPos isFlatEmpty[SEVENBUFFER, SIXBUFFER, EIGHTBUFFER, THHIRDDBUFFER, FIVEBUFFER, false];

				while {(count _flatPos) < SIXBUFFER} do {
					_spawnPos = [_flatPos1, 10, 300, SEVENBUFFER, FIVEBUFFER, FOURBUFFER, FIVEBUFFER] call BIS_fnc_findSafePos;
					_flatPos = _spawnPos isFlatEmpty[SEVENBUFFER, SIXBUFFER, EIGHTBUFFER, THHIRDDBUFFER, FIVEBUFFER, false];
				};
				private _infantryGroup = createGroup [resistance, true]; 
				for "_x" from 1 to 6 do {
					private _squadPos = [[[_flatPos, 10], []], ["water", "out"]] call BIS_fnc_randomPos;
					_unitArray = (missionconfigfile >> "unitList" >> "CSAT" >> "units") call BIS_fnc_getCfgData;
				_unit = selectRandom _unitArray;        _grpMember = _infantryGroup createUnit [_unit, _squadPos, [], 0, "FORM"];
					sleep 1;	
				};
				[_infantryGroup, _flatPos1, 200] call bis_fnc_taskPatrol;
				_infantryGroup enableDynamicSimulation true;
				{
					spawnedUnits pushBack _x;
				} foreach (units _infantryGroup);
			};
			/////////////////////////////////aii//////////////////////
			private _fuzzyPos1 = [((_flatPos select 0) - 200) + (random 300),((_flatPos select 1) - 200) + (random 300),0];

				for "_x" from SIXBUFFER to 2 do {
					private  _spawnPos =[_flatPos, 50, 300, SEVENBUFFER, FIVEBUFFER, FOURBUFFER, FIVEBUFFER] call BIS_fnc_findSafePos;
					private  _flatPos = _spawnPos isFlatEmpty[SEVENBUFFER, SIXBUFFER, EIGHTBUFFER, THHIRDDBUFFER, FIVEBUFFER, false];

						while {(count _flatPos) < SIXBUFFER} do {
							_spawnPos =[_flatPos, 50, 300, SEVENBUFFER, FIVEBUFFER, FOURBUFFER, FIVEBUFFER] call BIS_fnc_findSafePos;
							_flatPos = _spawnPos isFlatEmpty[SEVENBUFFER, SIXBUFFER, EIGHTBUFFER, THHIRDDBUFFER, FIVEBUFFER, false];
					};

					private _infantryGroup = [_flatPos, EAST, (configfile >> "CfgGroups" >> "East" >> "OPF_F" >> "Infantry" >> selectRandom ["OI_reconTeam","OIA_InfAssault","OIA_InfSquad","OIA_InfSquad_Weapons","OIA_InfTeam_AA","OIA_ReconSquad"])] call BIS_fnc_spawnGroup;

					{
						spawnedUnitss pushBack _x;
						AISkillUnitsArray pushBack _x;
					} foreach (units _infantryGroup);
					[_infantryGroup, _flatPos1, 200] call bis_fnc_taskPatrol;
			};

			private _fuzzyPos1 = [((_flatPos select 0) - 200) + (random 300),((_flatPos select 1) - 200) + (random 300),0];


			/////////////caller///at////////////
			_null = [protoTank,protoTank1,_flatPos] execVM "Scripts\vehicle\lecaller\vbnet14.sqf";


			//{ _x setMarkerPos _fuzzyPos1; } forEach ["aocircleside2"];	
			[west,["aoTask2"],["Seek And Destroy Artillery. Get over there and destroy that thing. Be careful, our operatives have said that has much more armor than standard and carries a wide array of powerful weapons.","Seek And Destroy Artillery","matrix_2"],(_fuzzyPos1),0,4,true,"destroy",true] call BIS_fnc_taskCreate;

			_letext3 = "Seek And Destroy Artillery";
			sleep 1;
			"matrix_2" setMarkerPos _fuzzyPos1;
			"matrix_2" setMarkerText _letext3;

							if (true) then {
				
						private _group = createGroup EAST;
						for "_x" from SIXBUFFER to 8 do {
							_unitArray = (missionconfigfile >> "unitList" >> "CSATTropic" >> "specialForces") call BIS_fnc_getCfgData;
							_unit = _unitArray call BIS_fnc_selectRandom;
							_grpMember = _group createUnit [_unit, _flatPos1, [], FIVEBUFFER, "FORM"];
							// _grpMember enableDynamicSimulation true;
						};
						returnedUnits = [_flatPos1, nil, (units _group), (300), MAMANBUFFER, false] call NAK_fnc_AIOccupyBuilding;

						{ deleteVehicle _x } foreach returnedUnits;
						{
							spawnedunits pushBack _x;
							AISkillUnitsArray pushBack _x;
						} foreach (units _group);
				};
				////////////////////////////////////
					if (true) then {
					private _milBuildings = nearestObjects [_flatPos1, MilitaryBuildings, (300)];

					_milBuildingCount = count _milBuildings;
					if (_milBuildingCount > FIVEBUFFER ) then {

							private _group = createGroup EAST;
							for "_x" from SIXBUFFER to 7 do {
								_unitArray = (missionconfigfile >> "unitList" >> "CSAT" >> "units") call BIS_fnc_getCfgData;
								_unit = _unitArray call BIS_fnc_selectRandom;
								_grpMember = _group createUnit [_unit, _flatPos1, [], FIVEBUFFER, "FORM"];
							};
							returnedUnits= [_flatPos1, MilitaryBuildings, (units _group), (300), MAMANBUFFER, false] call NAK_fnc_AIOccupyBuilding;

							{ deleteVehicle _x } foreach returnedUnits;

							{
								spawnedunits pushBack _x;
								AISkillUnitsArray pushBack _x;
							} foreach (units _group);
					};
				};

			sleep 10;


			///

			#define CHOPPER_TYPE "I_Heli_Transport_02_F","I_Heli_light_03_F","I_Heli_light_03_unarmed_F"
			private ["_objPos","_flatPos","_accepted","_position","_randomDir","_hangar","_x","_enemiesArray","_briefing","_fuzzyPos","_unitsArray","_dummy","_object"];
			_c4Message =  selectRandom ["Chopper data secured. The charge has been set! 30 seconds until detonation.","Heli data secured. The explosives have been set! 30 seconds until detonation.","Chopper intel secured. The charge is planted! 30 seconds until detonation."];

			//#include "unitDefines.hpp"


			//-------------------- FIND SAFE POSITION FOR OBJECTIVE

			private  _spawnPos =[(getMarkerPos currentAO), 10, 700, SEVENBUFFER, FIVEBUFFER, FOURBUFFER, FIVEBUFFER] call BIS_fnc_findSafePos;
			private  _flatPos = _spawnPos isFlatEmpty[SEVENBUFFER, SIXBUFFER, EIGHTBUFFER, THHIRDDBUFFER, FIVEBUFFER, false];

			while {(count _flatPos) < SIXBUFFER} do {
			_spawnPos = [(getMarkerPos currentAO), 10, 700, SEVENBUFFER, FIVEBUFFER, FOURBUFFER, FIVEBUFFER] call BIS_fnc_findSafePos;
			_flatPos = _spawnPos isFlatEmpty[SEVENBUFFER, SIXBUFFER, EIGHTBUFFER, THHIRDDBUFFER, FIVEBUFFER, false];
			};




				_objPos = [_flatPos, 25, 35, 10, 0, 0.5, 0] call BIS_fnc_findSafePos;

			//-------------------- SPAWN OBJECTIVE

				_randomDir = (random 360);
				hangar2 = "Land_TentHangar_V1_F" createVehicle _flatPos;
				waitUntil {!isNull hangar2};
				hangar2 setPos [(getPos hangar2 select 0), (getPos hangar2 select 1), ((getPos hangar2 select 2) - 1)];
				lesideObj2 =  (selectRandom [CHOPPER_TYPE]) createVehicle _flatPos;
				waitUntil {!isNull lesideObj2};
				{_x setDir _randomDir} forEach [lesideObj2,hangar2];
				lesideObj2 lock 3;



				house = "Land_Cargo_House_V3_F" createVehicle _objPos;
				house setDir random 360;
				house allowDamage false;

					for "_x" from 0 to 12 do {
				private _mine = createMine [(selectRandom ["APERSBoundingMine","BombCluster_02_UXO2_F","BombCluster_02_UXO3_F","BombCluster_03_UXO2_F","BombCluster_03_UXO4_F","BombCluster_02_UXO4_F","BombCluster_02_UXO1_F"]), ( getPos house), [], 20];
						east revealMine _mine;
					};

				object2 =  "Land_Laptop_device_F" createVehicle _objPos;
				sleep 0.3;
					[
					object2,                                                                           // Object the action is attached to
					"Secure Chopper",                                                                       // Title of the action
					"\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_hack_ca.paa",                      // Idle icon shown on screen
					"\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_hack_ca.paa",                      // Progress icon shown on screen
					"player distance _target < 6",                                                        // Condition for the action to be shown
					"player distance _target < 6",                                                      // Condition for the action to progress
					{},                                                                                  // Code executed when action starts
					{},                                                                                  // Code executed on every progress tick
					{ _null = [] execVM "Scripts\vehicle\lecaller\vbnet10.sqf"; },     // Code executed on completion
					{},                                                                                  // Code executed on interrupted
					[],                                                                                  // Arguments passed to the scripts as _this select 3
					7,                                                                                  // Action duration [s]
					0,                                                                                   // Priority
					true,                                                                                // Remove on completion
					false                                                                                // Show in unconscious state 
					] remoteExec ["BIS_fnc_holdActionAdd",0,object2];  
				//ledummy2 = explosivesDummy4;
				sleep 0.3;
				{ _x enableSimulation true } forEach [researchTable2,object2];
				sleep 0.3;
				researchTable2 setPos [(getPos house select 0), (getPos house select 1), ((getPos house select 2) + 1)];
				sleep 1;
				[researchTable2,object2,[0,0,0.82]] call BIS_fnc_relPosObject;


	
				for "_x" from SIXBUFFER to 2 do {
				
				private  _spawnPos =[_flatPos, 10, 300, SEVENBUFFER, FIVEBUFFER, FOURBUFFER, FIVEBUFFER] call BIS_fnc_findSafePos;
				private  _flatPos = _spawnPos isFlatEmpty[SEVENBUFFER, SIXBUFFER, EIGHTBUFFER, THHIRDDBUFFER, FIVEBUFFER, false];

				while {(count _flatPos) < SIXBUFFER} do {
					_spawnPos = [_flatPos, 10, 300, SEVENBUFFER, FIVEBUFFER, FOURBUFFER, FIVEBUFFER] call BIS_fnc_findSafePos;
					_flatPos = _spawnPos isFlatEmpty[SEVENBUFFER, SIXBUFFER, EIGHTBUFFER, THHIRDDBUFFER, FIVEBUFFER, false];
				};
				private _infantryGroup = createGroup [resistance, true]; 
				for "_x" from 1 to 6 do {
					private _squadPos = [[[_flatPos, 10], []], ["water", "out"]] call BIS_fnc_randomPos;
					_unitArray = (missionconfigfile >> "unitList" >> "CSAT" >> "units") call BIS_fnc_getCfgData;
				_unit = selectRandom _unitArray;        _grpMember = _infantryGroup createUnit [_unit, _squadPos, [], 0, "FORM"];
					sleep 1;	
				};
				[_infantryGroup, _objPos, 200] call bis_fnc_taskPatrol;
				_infantryGroup enableDynamicSimulation true;
				{
					spawnedUnits pushBack _x;
				} foreach (units _infantryGroup);
			};
			/////////////////////////////////aii//////////////////////
			private _fuzzyPos1 = [((_flatPos select 0) - 200) + (random 300),((_flatPos select 1) - 200) + (random 300),0];

				for "_x" from SIXBUFFER to 2 do {
					private  _spawnPos =[_flatPos, 50, 300, SEVENBUFFER, FIVEBUFFER, FOURBUFFER, FIVEBUFFER] call BIS_fnc_findSafePos;
					private  _flatPos = _spawnPos isFlatEmpty[SEVENBUFFER, SIXBUFFER, EIGHTBUFFER, THHIRDDBUFFER, FIVEBUFFER, false];

						while {(count _flatPos) < SIXBUFFER} do {
							_spawnPos =[_flatPos, 50, 300, SEVENBUFFER, FIVEBUFFER, FOURBUFFER, FIVEBUFFER] call BIS_fnc_findSafePos;
							_flatPos = _spawnPos isFlatEmpty[SEVENBUFFER, SIXBUFFER, EIGHTBUFFER, THHIRDDBUFFER, FIVEBUFFER, false];
					};

					private _infantryGroup = [_flatPos, EAST, (configfile >> "CfgGroups" >> "East" >> "OPF_F" >> "Infantry" >> selectRandom ["OI_reconTeam","OIA_InfAssault","OIA_InfSquad","OIA_InfSquad_Weapons","OIA_InfTeam_AA","OIA_ReconSquad"])] call BIS_fnc_spawnGroup;

					{
						spawnedUnitss pushBack _x;
						AISkillUnitsArray pushBack _x;
					} foreach (units _infantryGroup);
					[_infantryGroup, _objPos, 200] call bis_fnc_taskPatrol;
			};

			//-------------------- SPAWN FORCE PROTECTION

				private	_fuzzyPos2 = [((_flatPos select 0) - 200) + (random 300),((_flatPos select 1) - 200) + (random 300),0];


				[west,["aoTask3"],["OPFOR forces have been provided with a new prototype attack chopper and they're keeping it in a hangar somewhere on the island.We've marked the suspected location on your map; head to the hangar, get the data and destroy the helicopter.","Secure Chopper","matrix_3"],(_fuzzyPos2),0,5,true,"heli",true] call BIS_fnc_taskCreate;

			_letext4 = "Secure Chopper";
			sleep 1;
			"matrix_3" setMarkerPos _fuzzyPos2;
			"matrix_3" setMarkerText _letext4;

							if (true) then {
				
						private _group = createGroup EAST;
						for "_x" from SIXBUFFER to 8 do {
							_unitArray = (missionconfigfile >> "unitList" >> "CSATTropic" >> "specialForces") call BIS_fnc_getCfgData;
							_unit = _unitArray call BIS_fnc_selectRandom;
							_grpMember = _group createUnit [_unit, _flatPos, [], FIVEBUFFER, "FORM"];
							// _grpMember enableDynamicSimulation true;
						};
						returnedUnits = [_flatPos, nil, (units _group), (300), MAMANBUFFER, false] call NAK_fnc_AIOccupyBuilding;

						{ deleteVehicle _x } foreach returnedUnits;
						{
							spawnedunits pushBack _x;
							AISkillUnitsArray pushBack _x;
						} foreach (units _group);
				};
				////////////////////////////////////
					if (true) then {
					private _milBuildings = nearestObjects [_flatPos, MilitaryBuildings, (300)];

					_milBuildingCount = count _milBuildings;
					if (_milBuildingCount > FIVEBUFFER ) then {

							private _group = createGroup EAST;
							for "_x" from SIXBUFFER to 7 do {
								_unitArray = (missionconfigfile >> "unitList" >> "CSAT" >> "units") call BIS_fnc_getCfgData;
								_unit = _unitArray call BIS_fnc_selectRandom;
								_grpMember = _group createUnit [_unit, _flatPos, [], FIVEBUFFER, "FORM"];
							};
							returnedUnits= [_flatPos, MilitaryBuildings, (units _group), (300), MAMANBUFFER, false] call NAK_fnc_AIOccupyBuilding;

							{ deleteVehicle _x } foreach returnedUnits;
						
						

							{
								spawnedunits pushBack _x;
								AISkillUnitsArray pushBack _x;
							} foreach (units _group);
					};
				};

			{
			_x addCuratorEditableObjects [spawnedUnits, true];
			} foreach allCurators;
			[] call NAK_fnc_vbnet;

				//_thehhe1 = "befor loop";
				//	 [_thehhe1] remoteExec ["NAK_fnc_globalHint", -2, false];

			//////////////////////////////////////////////////////////////////////////////////////
			/*
			//myvec1 setVehicleAmmo 1;myvec2 setVehicleAmmo 1;myvec3 setVehicleAmmo 1;myvec4 setVehicleAmmo 1; if (true) then {private["_marker","_pos","_paratroopers","_para","_xpos","_testing","_chute","_soundSource","_soundToPlay"];_marker = currentAO;sleep 10;startPos =  getMarkerPos _marker;_pos = [(startPos select 0)+65,(startPos select 1)+50,(startPos select 2)];private _paratroopers = [_pos, resistance, (configfile >> "CfgGroups" >> "Indep" >> "IND_F" >> "Infantry" >> "HAF_InfSquad")] call BIS_fnc_spawnGroup;{spawnedUnitss pushBack _x;AISkillUnitsArray pushBack _x;} foreach (units _paratroopers);{_x setpos ((getpos _x) vectorAdd [0,0,2000]);} foreach (units _paratroopers);_chute = "NonSteerable_Parachute_F";{waitUntil {(getPosATL _x select 2) < 200};_para = _chute  createVehicle (position _x);_xpos = getPos _x;_para setPos _xpos;_x moveIndriver _para;} foreach units _paratroopers ;_paratroopers  setBehaviour "COMBAT";_paratroopers  setCombatMode "RED";[_paratroopers, (getMarkerPos currentAO)] call BIS_fnc_taskAttack;};
			sleep 40;{	if (!(alive _x)) then { deleteVehicle _x;	};} foreach spawnedUnits; private _lesplane = [];_plane = createVehicle [(selectRandom ["O_Plane_Fighter_02_Stealth_F","I_Plane_Fighter_03_AA_F","O_Plane_CAS_02_dynamicLoadout_F","I_Plane_Fighter_04_F","O_Plane_Fighter_02_F"]), getMarkerPos(selectRandom  ["jetleemarker","jetleemarker1","jetleemarker2","jetleemarker3"]), [], 0, "FLY"]; _pilotguy = createGroup [EAST, true]; _lepilotguy = _pilotguy createUnit ["O_Pilot_F", [26761.4,24593.4,0.000909805] , [], 0, "FORM"]; ((units _pilotguy) select 0) moveInDriver _plane;_wpcas = _pilotguy addWaypoint [getMarkerPos currentAO, 0];_wpcas setWaypointBehaviour "SAFE";_wpcas setWaypointCombatMode "RED";_wpcas setWaypointCompletionRadius 1900;_pilotguy setCombatMode "RED";_pilotguy setBehaviour "COMBAT";_pilotguy setSpeedMode "FULL";{_lesplane pushBack _x;} foreach (units _pilotguy);{_x addCuratorEditableObjects [_lesplane, true];} foreach allCurators; waitUntil {sleep 40;(count list badmainMissionTreshold < 15)};   {	if (!(alive _x)) then { deleteVehicle _x;	};} foreach spawnedUnits; private _lesplane = [];_plane = createVehicle [(selectRandom ["O_Plane_Fighter_02_Stealth_F","I_Plane_Fighter_03_AA_F","O_Plane_CAS_02_dynamicLoadout_F","I_Plane_Fighter_04_F","O_Plane_Fighter_02_F"]), getMarkerPos(selectRandom  ["jetleemarker","jetleemarker1","jetleemarker2","jetleemarker3"]), [], 0, "FLY"]; _pilotguy = createGroup [EAST, true]; _lepilotguy = _pilotguy createUnit ["O_Pilot_F", [26761.4,24593.4,0.000909805] , [], 0, "FORM"]; ((units _pilotguy) select 0) moveInDriver _plane;_wpcas = _pilotguy addWaypoint [getMarkerPos currentAO, 0];_wpcas setWaypointBehaviour "SAFE";_wpcas setWaypointCombatMode "RED";_wpcas setWaypointCompletionRadius 1900;_pilotguy setCombatMode "RED";_pilotguy setBehaviour "COMBAT";_pilotguy setSpeedMode "FULL";{_lesplane pushBack _x;} foreach (units _pilotguy);{_x addCuratorEditableObjects [_lesplane, true];} foreach allCurators;
			//myvec1 setVehicleAmmo 1;myvec2 setVehicleAmmo 1;myvec3 setVehicleAmmo 1;myvec4 setVehicleAmmo 1;		

			*/
			/////////////////////////////////////////////////////ends///////////////////////////////////////////////////////


			flag1 = 1; flag5 = 1;
			flag2 = 1;
			flag3 = 1;
			flag4 = 1;
		//	lamatrix = 0;

			/////////////////////////////////////////////////////////////
				while {true} do {
					
			
				_DEFUSED = missionNamespace getVariable "DEFUSED";
				_ARMED = missionNamespace getVariable "ARMED";
				_LARMED = missionNamespace getVariable "LARMED";
				_Ilestmort = missionNamespace getVariable "Ilestmort";
				_thesecondkiller = missionNamespace getVariable "thesecondkiller";


				if ((!alive protoTank) && (!alive protoTank1) && (flag2 == 1)) then { 
					["aoTask2", "SUCCEEDED",true] call BIS_fnc_taskSetState;
					sleep 2;
					["aoTask2",west] call bis_fnc_deleteTask;
					flag2 = 0;
					"matrix_2" setMarkerPos [-35206.1,-25793.5];
					missionNamespace setVariable ["thevileacee", 1, true];
					{_x removeEventHandler ["Fired", 0];} forEach [protoTank,protoTank1];
					{_x removeEventHandler ["HandleDamage",1];} forEach [protoTank,protoTank1];
					{deleteVehicle _x;} forEach [protoTank,protoTank1];
				};


				
				if ((alive lesciengrpMember) && (flag4 == 1) && ( _LARMED == 1)) then {
					
					["aoTask4", "SUCCEEDED",true] call BIS_fnc_taskSetState;
					sleep 5;
					["aoTask4",west] call bis_fnc_deleteTask;
					"matrix_1" setMarkerPos [-35206.1,-25793.5];
					deletevehicle lesciengrpMember;
					flag4 = 0;
				};
					if ((alive lesciengrpMember) && ( _Ilestmort == 1)) then {

					missionNamespace setVariable ["Ilestmort", 0, true];
					["aoTask4", "Failed",true] call BIS_fnc_taskSetState;
					sleep 5;
					["aoTask4",west] call bis_fnc_deleteTask;
					"matrix_1" setMarkerPos [-35206.1,-25793.5];
					deletevehicle lesciengrpMember;
					flag4 = 0;
				};


				if ((!alive lesciengrpMember) && (flag4 == 1) && ( _LARMED == 0) && (alive sideObj1)) then {

					["aoTask4", "Failed",true] call BIS_fnc_taskSetState;
					sleep 5;
					["aoTask4",west] call bis_fnc_deleteTask;
					"matrix_1" setMarkerPos [-35206.1,-25793.5];
					deletevehicle lesciengrpMember;
					flag4 = 0;
					[currentAO,sideObj1] execVM "scripts\vehicle\lecaller\vbnet9.sqf";
				};

				if ((_DEFUSED == 1) && (flag1 == 1)) then { 
					["aoTask1", "SUCCEEDED",true] call BIS_fnc_taskSetState;
					sleep 5;
					["aoTask1",west] call bis_fnc_deleteTask;
					"matrix" setMarkerPos [-35206.1,-25793.5];
					deletevehicle sideObj1;
					{ deleteVehicle _x } forEach [sideObj1];
					flag1 = 0;
					missionNamespace setVariable ["DEFUSED", 0, true];


					/////sciencwe
					missionNamespace setVariable ["Ilestmort", 0, true];
					["aoTask4", "Failed",true] call BIS_fnc_taskSetState;
					sleep 5;
					["aoTask4",west] call bis_fnc_deleteTask;
					"matrix_1" setMarkerPos [-35206.1,-25793.5];
					deletevehicle lesciengrpMember;

						
					deleteVehicle barrel1;
					deleteVehicle barrel2;
					deleteVehicle barrel3;

					deleteVehicle cbarrel1;
					deleteVehicle cbarrel2;
					deleteVehicle cbarrel3;

					deleteVehicle lcbarrel1;
					deleteVehicle lcbarrel2;
					deleteVehicle lcbarrel3;
				
				};

				
				if ((_ARMED == 1) && (flag1 == 1)) then { 
					missionNamespace setVariable ["Ilestmort", 0, true];
					["aoTask1", "Failed",true] call BIS_fnc_taskSetState;
					sleep 5;
					["aoTask1",west] call bis_fnc_deleteTask;
					"matrix" setMarkerPos [-35206.1,-25793.5];

					selectRandom ["Bo_Mk82_MI08","Bo_Mk82","Bo_GBU12_LGB_MI10","Bo_GBU12_LGB","BombCluster_01_Ammo_F","BombCluster_02_Ammo_F","BombCluster_03_Ammo_F"] createVehicle getPos sideObj1; 		// default "Bo_Mk82"

					deletevehicle sideObj1;
					{ deleteVehicle _x } forEach [hangar1];
					flag1 = 0;
					missionNamespace setVariable ["ARMED", 0, true];
					if ((alive lesciengrpMember)) then {

							missionNamespace setVariable ["Ilestmort", 0, true];
							["aoTask4", "Failed",true] call BIS_fnc_taskSetState;
							sleep 5;
							["aoTask4",west] call bis_fnc_deleteTask;
							"matrix_1" setMarkerPos [-35206.1,-25793.5];
					
							deletevehicle lesciengrpMember;
				
							};
								["aoTask6", "Failed",true] call BIS_fnc_taskSetState;
								sleep 5;
								["aoTask6",west] call bis_fnc_deleteTask;
					
					deleteVehicle barrel1;
					deleteVehicle barrel2;
					deleteVehicle barrel3;

					deleteVehicle cbarrel1;
					deleteVehicle cbarrel2;
					deleteVehicle cbarrel3;

					deleteVehicle lcbarrel1;
					deleteVehicle lcbarrel2;
					deleteVehicle lcbarrel3;

				
				};

				if ((!alive sideObj1) && (flag1 == 1)) then {
				
					missionNamespace setVariable ["verylast", 1, true];
					missionNamespace setVariable ["Ilestmort", 0, true];
					["aoTask1", "Failed",true] call BIS_fnc_taskSetState;
					sleep 5;
					["aoTask1",west] call bis_fnc_deleteTask;
					"matrix" setMarkerPos [-35206.1,-25793.5];
					deletevehicle sideObj1;
					{ deleteVehicle _x } forEach [hangar1];
					flag1 = 0;
					if (alive lesciengrpMember) then {	
						["aoTask4", "Failed",true] call BIS_fnc_taskSetState;
						sleep 5;
						["aoTask4",west] call bis_fnc_deleteTask;
						"matrix_1" setMarkerPos [-35206.1,-25793.5];
						deletevehicle lesciengrpMember;
					};
					
					/////sciencwe
					missionNamespace setVariable ["Ilestmort", 0, true];
					["aoTask4", "Failed",true] call BIS_fnc_taskSetState;
					sleep 5;
					["aoTask4",west] call bis_fnc_deleteTask;
					"matrix_1" setMarkerPos [-35206.1,-25793.5];
					deletevehicle lesciengrpMember;
					
					deleteVehicle barrel1;
					deleteVehicle barrel2;
					deleteVehicle barrel3;

					deleteVehicle cbarrel1;
					deleteVehicle cbarrel2;
					deleteVehicle cbarrel3;

					deleteVehicle lcbarrel1;
					deleteVehicle lcbarrel2;
					deleteVehicle lcbarrel3;
				};

			////////////////////////////sethird/////////////////////////////////////////////////////////////////////////////////

				if ((!alive lesideObj2) && (flag3 == 1)) then {

					["aoTask3", "Failed",true] call BIS_fnc_taskSetState;
					sleep 5;
					["aoTask3",west] call bis_fnc_deleteTask;
					"matrix_3" setMarkerPos [-35206.1,-25793.5];
				{ _x setPos [-10000,-10000,0]; } forEach [researchTable2];
					flag3 = 0;
					missionNamespace setVariable ["thesecondkiller", 0, true];
				};

				if ((_thesecondkiller == 1) && (flag3 == 1)) then {

					[_c4Message] remoteExec ["NAK_fnc_globalHint", -2, false];
					sleep 0.1;
					sleep 10;
				selectRandom ["Bo_Mk82_MI08","Bo_Mk82","Bo_GBU12_LGB_MI10","Bo_GBU12_LGB","BombCluster_01_Ammo_F","BombCluster_02_Ammo_F","BombCluster_03_Ammo_F"] createVehicle getPos lesideObj2; 		// default "Bo_Mk82"
					researchTable2 setPos [-10000,-10000,1];				// hide research table
					sleep 0.1;
					
					["aoTask3", "SUCCEEDED",true] call BIS_fnc_taskSetState;
					sleep 5;
					["aoTask3",west] call bis_fnc_deleteTask;
					"matrix_3" setMarkerPos [-35206.1,-25793.5];
					{ _x setPos [-10000,-10000,0]; } forEach [researchTable2];

				
					flag3 = 0;
					missionNamespace setVariable ["thesecondkiller", 0, true];
				};


			
	/*	if (currentAO in leboatao) then {

			if (count list badmainMission007 < 3) then { ["aoTask15", "Succeeded",true] call BIS_fnc_taskSetState; sleep 3; ["aoTask15",west] call bis_fnc_deleteTask; "matrix_4" setMarkerPos [-35206.1,-25793.5];deleteVehicle  badmainMission007; flag5 = 0;};
			if ((flag1 == 0) && (flag2 == 0) && (flag3 == 0) && (flag5 == 0)) exitWith {lamatrix = 1;};

		}
		else
		{

			if ((flag1 == 0) && (flag2 == 0) && (flag3 == 0)) exitWith {lamatrix = 1;};

		};*/
			if ((flag1 == 0) && (flag2 == 0) && (flag3 == 0)) exitWith {};
				
				sleep 60;
			};

					deleteVehicle lesideObj2;
						deleteVehicle object2;
						deleteVehicle hangar2;
						deleteVehicle house;
						{deleteVehicle _x;} count allMines; 
							if (alive lesciengrpMember) then {

							["aoTask4", "Failed",true] call BIS_fnc_taskSetState;
							sleep 5;
							["aoTask4",west] call bis_fnc_deleteTask;
							"matrix_1" setMarkerPos [-35206.1,-25793.5];
							deletevehicle lesciengrpMember;
				
							};


				};
				case 2: {

			lesarrayofunit = [];

			private  _spawnPos =[(getMarkerPos currentAO), 10, 700, SEVENBUFFER, FIVEBUFFER, FOURBUFFER, FIVEBUFFER] call BIS_fnc_findSafePos;
			private  _flatPos = _spawnPos isFlatEmpty[SEVENBUFFER, SIXBUFFER, EIGHTBUFFER, THHIRDDBUFFER, FIVEBUFFER, false];

			while {(count _flatPos) < SIXBUFFER} do {
			_spawnPos = [(getMarkerPos currentAO), 10, 700, SEVENBUFFER, FIVEBUFFER, FOURBUFFER, FIVEBUFFER] call BIS_fnc_findSafePos;
			_flatPos = _spawnPos isFlatEmpty[SEVENBUFFER, SIXBUFFER, EIGHTBUFFER, THHIRDDBUFFER, FIVEBUFFER, false];
			};




			private  _flatPos1 = [(_flatPos select 0) - 2, (_flatPos select 1) - 2, (_flatPos select 2)];
			private	_flatPos2 = [(_flatPos select 0) + 3, (_flatPos select 1) + 3, (_flatPos select 2)];
			private	_flatPos3 = [(_flatPos select 0) + 20, (_flatPos select 1) + random 20, (_flatPos select 2)];
			private	_flatPos4 = [(_flatPos select 0) + 40, (_flatPos select 1) + random 20, (_flatPos select 2)];

				_PTdir = random 360;
				
				sleep 0.3;


				if (true) then {


						private    _grp1 = createGroup [east, true];
						tsvu1 = "O_MBT_02_arty_F";
						tautoaa1 = [_flatPos1, 0, tsvu1, _grp1] call bis_fnc_spawnvehicle; 
						lapriorityObj1 = tautoaa1 select 0;
					
				};
				
				sleep 0.3;

				if (true) then {


						private    _grp1 = createGroup [east, true];
						tsvu2 = "O_MBT_02_arty_F";
						tautoaa2 = [_flatPos2, 0, tsvu1, _grp1] call bis_fnc_spawnvehicle; 
						lapriorityObj2 = tautoaa2 select 0;
					
				};

				
				sleep 0.3;
				
				lapriorityObj1 addEventHandler ["Fired",{if (!isPlayer (gunner lapriorityObj1)) then { lapriorityObj1 setVehicleAmmo 1; };}];
				lapriorityObj2 addEventHandler ["Fired",{if (!isPlayer (gunner lapriorityObj2)) then { lapriorityObj2 setVehicleAmmo 1; };}];
				
				
				//----- SPAWN AMMO TRUCK (for ambiance and plausibiliy of unlimited ammo)
				
				leammoTruck = "O_Truck_03_ammo_F" createVehicle _flatPos3;
				waitUntil {!isNull leammoTruck};
				leammoTruck setDir random 360;

					
				{_x lock 3;_x allowCrewInImmobile true; } forEach [lapriorityObj1,lapriorityObj2,leammoTruck];
					
			//-------------------- 3. SPAWN CREW

				sleep 1;

				
			//-------------------- 4. SPAWN H-BARRIER RING
				
				sleep 1;

				_distance = 20;
				_dir = 0;
				for "_c" from 0 to 7 do {
					_pos = [_flatPos, _distance, _dir] call BIS_fnc_relPos;
					_barrier = "Land_HBarrierBig_F" createVehicle _pos;
					waitUntil {alive _barrier};
					_barrier setDir _dir;
					_dir = _dir + 45;
					_barrier allowDamage false; 
					_barrier enableSimulation false;
					
					constructsArray pushback _barrier;
				};
				

				//---------- OBJ 1
				
					lapriorityObj1 setVariable ["selections", []];
					lapriorityObj1 setVariable ["gethit", []];
					lapriorityObj1 addEventHandler
					[
						"HandleDamage",
						{
							_unit = _this select 0;
							_selections = _unit getVariable ["selections", []];
							_gethit = _unit getVariable ["gethit", []];
							_selection = _this select 1;
							if !(_selection in _selections) then
							{
								_selections set [count _selections, _selection];
								_gethit set [count _gethit, 0];
							};
							_i = _selections find _selection;
							_olddamage = _gethit select _i;
							_damage = _olddamage + ((_this select 2) - _olddamage) * 0.25;
							_gethit set [_i, _damage];
							_damage;
						}
					];
				
				//---------- OBJ 2
				
					lapriorityObj2 setVariable ["selections", []];
					lapriorityObj2 setVariable ["gethit", []];
					lapriorityObj2 addEventHandler
					[
						"HandleDamage",
						{
							_unit = _this select 0;
							_selections = _unit getVariable ["selections", []];
							_gethit = _unit getVariable ["gethit", []];
							_selection = _this select 1;
							if !(_selection in _selections) then
							{
								_selections set [count _selections, _selection];
								_gethit set [count _gethit, 0];
							};
							_i = _selections find _selection;
							_olddamage = _gethit select _i;
							_damage = _olddamage + ((_this select 2) - _olddamage) * 0.25;
							_gethit set [_i, _damage];
							_damage;
						}
					];
			//-------------------- 5. SPAWN FORCE PROTECTION

				sleep 1;
			private _fuzzyPos1 = [((_flatPos select 0) - 200) + (random 300),((_flatPos select 1) - 200) + (random 300),0];

				for "_x" from 0 to 12 do {
					private _mine = createMine [(selectRandom ["APERSBoundingMine","BombCluster_02_UXO2_F","BombCluster_02_UXO3_F","BombCluster_03_UXO2_F","BombCluster_03_UXO4_F","BombCluster_02_UXO4_F","BombCluster_02_UXO1_F"]), ( getPos leammoTruck), [], 20];
						east revealMine _mine;
						};


		
	
				for "_x" from SIXBUFFER to 2 do {
				
				private  _spawnPos =[_flatPos1, 10, 300, SEVENBUFFER, FIVEBUFFER, FOURBUFFER, FIVEBUFFER] call BIS_fnc_findSafePos;
				private  _flatPos = _spawnPos isFlatEmpty[SEVENBUFFER, SIXBUFFER, EIGHTBUFFER, THHIRDDBUFFER, FIVEBUFFER, false];

				while {(count _flatPos) < SIXBUFFER} do {
					_spawnPos = [_flatPos1, 10, 300, SEVENBUFFER, FIVEBUFFER, FOURBUFFER, FIVEBUFFER] call BIS_fnc_findSafePos;
					_flatPos = _spawnPos isFlatEmpty[SEVENBUFFER, SIXBUFFER, EIGHTBUFFER, THHIRDDBUFFER, FIVEBUFFER, false];
				};
				private _infantryGroup = createGroup [resistance, true]; 
				for "_x" from 1 to 6 do {
					private _squadPos = [[[_flatPos, 10], []], ["water", "out"]] call BIS_fnc_randomPos;
					_unitArray = (missionconfigfile >> "unitList" >> "CSAT" >> "units") call BIS_fnc_getCfgData;
				_unit = selectRandom _unitArray;        _grpMember = _infantryGroup createUnit [_unit, _squadPos, [], 0, "FORM"];
					sleep 1;	
				};
				[_infantryGroup, _flatPos1, 200] call bis_fnc_taskPatrol;

				_infantryGroup enableDynamicSimulation true;
				{
					spawnedUnits pushBack _x;
				} foreach (units _infantryGroup);
			};
			/////////////////////////////////aii//////////////////////
			private _fuzzyPos1 = [((_flatPos select 0) - 200) + (random 300),((_flatPos select 1) - 200) + (random 300),0];

				for "_x" from SIXBUFFER to 2 do {
					private  _spawnPos =[_flatPos, 50, 300, SEVENBUFFER, FIVEBUFFER, FOURBUFFER, FIVEBUFFER] call BIS_fnc_findSafePos;
					private  _flatPos = _spawnPos isFlatEmpty[SEVENBUFFER, SIXBUFFER, EIGHTBUFFER, THHIRDDBUFFER, FIVEBUFFER, false];

						while {(count _flatPos) < SIXBUFFER} do {
							_spawnPos =[_flatPos, 50, 300, SEVENBUFFER, FIVEBUFFER, FOURBUFFER, FIVEBUFFER] call BIS_fnc_findSafePos;
							_flatPos = _spawnPos isFlatEmpty[SEVENBUFFER, SIXBUFFER, EIGHTBUFFER, THHIRDDBUFFER, FIVEBUFFER, false];
					};

					private _infantryGroup = [_flatPos, EAST, (configfile >> "CfgGroups" >> "East" >> "OPF_F" >> "Infantry" >> selectRandom ["OI_reconTeam","OIA_InfAssault","OIA_InfSquad","OIA_InfSquad_Weapons","OIA_InfTeam_AA","OIA_ReconSquad"])] call BIS_fnc_spawnGroup;

					{
						spawnedUnitss pushBack _x;
						AISkillUnitsArray pushBack _x;
					} foreach (units _infantryGroup);
					[_infantryGroup, _flatPos1, 200] call bis_fnc_taskPatrol;
			};


			//////////////////////ai////////////////////////////////////////////////////////////

			private _fuzzyPos1 = [((_flatPos select 0) - 200) + (random 300),((_flatPos select 1) - 200) + (random 300),0];

		


			///////////////////////////////////////////////ai///////////////////////////////////////////////
			//{ _x setMarkerPos _fuzzyPos1; } forEach ["aocircleside2"];	
			[west,["aoTask10"],["OPFOR forces are setting up an artillery battery to hit you guys damned hard! We've picked up their positions with thermal imaging scans and have marked it on your map.This is a priority target, boys! They're just setting up now; they'll be firing in about five minutes!","Destroy Artillery","matrix"],(_fuzzyPos1),0,6,true,"armor",true] call BIS_fnc_taskCreate;

			_null = [lapriorityObj1,lapriorityObj2,_flatPos] execVM "Scripts\vehicle\lecaller\vbnet12.sqf";

			_letext11 = "Destroy Artillery";
			sleep 1;
			"matrix" setMarkerPos _fuzzyPos1;
			"matrix" setMarkerText _letext11;
							if (true) then {
				
						private _group = createGroup EAST;
						for "_x" from SIXBUFFER to 8 do {
							_unitArray = (missionconfigfile >> "unitList" >> "CSATTropic" >> "specialForces") call BIS_fnc_getCfgData;
							_unit = _unitArray call BIS_fnc_selectRandom;
							_grpMember = _group createUnit [_unit, _flatPos1, [], FIVEBUFFER, "FORM"];
							// _grpMember enableDynamicSimulation true;
						};
						returnedUnits = [_flatPos1, nil, (units _group), (300), MAMANBUFFER, false] call NAK_fnc_AIOccupyBuilding;

						{ deleteVehicle _x } foreach returnedUnits;
						{
							spawnedunits pushBack _x;
							AISkillUnitsArray pushBack _x;
						} foreach (units _group);
				};
				////////////////////////////////////
					if (true) then {
					private _milBuildings = nearestObjects [_flatPos1, MilitaryBuildings, (300)];

					_milBuildingCount = count _milBuildings;
					if (_milBuildingCount > FIVEBUFFER ) then {

							private _group = createGroup EAST;
							for "_x" from SIXBUFFER to 7 do {
								_unitArray = (missionconfigfile >> "unitList" >> "CSAT" >> "units") call BIS_fnc_getCfgData;
								_unit = _unitArray call BIS_fnc_selectRandom;
								_grpMember = _group createUnit [_unit, _flatPos1, [], FIVEBUFFER, "FORM"];
							};
							returnedUnits= [_flatPos1, MilitaryBuildings, (units _group), (300), MAMANBUFFER, false] call NAK_fnc_AIOccupyBuilding;

							{ deleteVehicle _x } foreach returnedUnits;

							{
								spawnedunits pushBack _x;
								AISkillUnitsArray pushBack _x;
							} foreach (units _group);
					};
				};

			sleep 10;
				
			//-------------------- FIRING SEQUENCE LOOP///////////////////////////////////////////////
			/////////////////////////////////////////////////////////////////////////////////////////////////

			private  _spawnPos =[(getMarkerPos currentAO), 10, 700, SEVENBUFFER, FIVEBUFFER, FOURBUFFER, FIVEBUFFER] call BIS_fnc_findSafePos;
			private  _flatPos = _spawnPos isFlatEmpty[SEVENBUFFER, SIXBUFFER, EIGHTBUFFER, THHIRDDBUFFER, FIVEBUFFER, false];

			while {(count _flatPos) < SIXBUFFER} do {
			_spawnPos = [(getMarkerPos currentAO), 10, 700, SEVENBUFFER, FIVEBUFFER, FOURBUFFER, FIVEBUFFER] call BIS_fnc_findSafePos;
			_flatPos = _spawnPos isFlatEmpty[SEVENBUFFER, SIXBUFFER, EIGHTBUFFER, THHIRDDBUFFER, FIVEBUFFER, false];
			};




			private _flatPos1 = [(_flatPos select 0) - 2, (_flatPos select 1) - 2, (_flatPos select 2)];
			private _flatPos2 = [(_flatPos select 0) + 2, (_flatPos select 1) + 2, (_flatPos select 2)];
			private _flatPos3 = [(_flatPos select 0) + 20, (_flatPos select 1) + random 20, (_flatPos select 2)];
			private _flatPos4 = [(_flatPos select 0) + 40, (_flatPos select 1) + random 20, (_flatPos select 2)];


				_PTdir = random 360;
				
				sleep 1;
				
				priorityObj1l = "O_APC_Tracked_02_AA_F" createVehicle _flatPos1;
				waitUntil {!isNull priorityObj1l};
				priorityObj1l setDir _PTdir;
				
				sleep 1;
				
				priorityObj2l = "O_APC_Tracked_02_AA_F" createVehicle _flatPos2;
				waitUntil {!isNull priorityObj2l};
				priorityObj2l setDir _PTdir;
				
				sleep 1;
				
				//----- SPAWN AMMO TRUCK (for ambiance and plausibiliy of unlimited ammo)
				
				ammoTruckl = "O_Truck_03_ammo_F" createVehicle _flatPos3;
				waitUntil {!isNull ammoTruckl};
				ammoTruckl setDir random 360;
				
				{_x lock 3;_x allowCrewInImmobile true;} forEach [priorityObj1l,priorityObj2l,ammoTruckl];
				
				
				
			//-------------------- 3. SPAWN CREW
				
						// for crew and h-barriers
				
				private _priorityGroup = createGroup east;
				
					"O_officer_F" createUnit [_flatPos, _priorityGroup];
					"O_officer_F" createUnit [_flatPos, _priorityGroup];
					"O_engineer_F" createUnit [_flatPos, _priorityGroup];
					"O_engineer_F" createUnit [_flatPos, _priorityGroup];
					
					((units _priorityGroup) select 0) assignAsCommander priorityObj1l;
					((units _priorityGroup) select 0) moveInCommander priorityObj1l;
					((units _priorityGroup) select 1) assignAsCommander priorityObj2l;
					((units _priorityGroup) select 1) moveInCommander priorityObj2l;
					((units _priorityGroup) select 2) assignAsGunner priorityObj1l;
					((units _priorityGroup) select 2) moveInGunner priorityObj1l;
					((units _priorityGroup) select 3) assignAsGunner priorityObj2l;
					((units _priorityGroup) select 3) moveInGunner priorityObj2l;
				
					lesarrayofunit pushBack _priorityGroup;


				_basepos = getMarkerPos "respawn_west";
				//---------- Engines on baby
				
				sleep 0.1;
				priorityObj1l engineOn true;
				sleep 0.1;
				priorityObj2l engineOn true;
				priorityObj1l doWatch _basepos;
				priorityObj2l doWatch _basepos;
				

			//-------------------- 4. SPAWN H-BARRIER RING

				sleep 1;

				private _distance = 16;
				private _dir = 0;
				for "_c" from 0 to 7 do
				{
					_pos = [_flatPos, _distance, _dir] call BIS_fnc_relPos;
					_barrier = "Land_HBarrierBig_F" createVehicle _pos;
					waitUntil {alive _barrier};
					_barrier setDir _dir;
					_dir = _dir + 45;
					_barrier allowDamage false; 
					_barrier enableSimulation false;
					
					constructsArray pushBack _barrier;
				};

				_priorityGroup setBehaviour "COMBAT";
				_priorityGroup setCombatMode "RED";	
				_priorityGroup allowFleeing 0;
				
				//----- 6a. UNLIMITED AMMO

				priorityObj1l addEventHandler ["Fired",{ priorityObj1l setVehicleAmmo 1 }];
				priorityObj2l addEventHandler ["Fired",{ priorityObj2l setVehicleAmmo 1 }];

				//-------------------- 6b. ABIT OF EXTRA HEALTH

				//---------- OBJ 1
				
					priorityObj1l setVariable ["selections", []];
					priorityObj1l setVariable ["gethit", []];
					priorityObj1l addEventHandler
					[
						"HandleDamage",
						{
							_unit = _this select 0;
							_selections = _unit getVariable ["selections", []];
							_gethit = _unit getVariable ["gethit", []];
							_selection = _this select 1;
							if !(_selection in _selections) then
							{
								_selections set [count _selections, _selection];
								_gethit set [count _gethit, 0];
							};
							_i = _selections find _selection;
							_olddamage = _gethit select _i;
							_damage = _olddamage + ((_this select 2) - _olddamage) * 0.25;
							_gethit set [_i, _damage];
							_damage;
						}
					];
				
				//---------- OBJ 2
				
					priorityObj2l setVariable ["selections", []];
					priorityObj2l setVariable ["gethit", []];
					priorityObj2l addEventHandler
					[
						"HandleDamage",
						{
							_unit = _this select 0;
							_selections = _unit getVariable ["selections", []];
							_gethit = _unit getVariable ["gethit", []];
							_selection = _this select 1;
							if !(_selection in _selections) then
							{
								_selections set [count _selections, _selection];
								_gethit set [count _gethit, 0];
							};
							_i = _selections find _selection;
							_olddamage = _gethit select _i;
							_damage = _olddamage + ((_this select 2) - _olddamage) * 0.25;
							_gethit set [_i, _damage];
							_damage;
						}
					];

			for "_x" from 0 to 12 do {
					private _mine = createMine [(selectRandom ["APERSBoundingMine","BombCluster_02_UXO2_F","BombCluster_02_UXO3_F","BombCluster_03_UXO2_F","BombCluster_03_UXO4_F","BombCluster_02_UXO4_F","BombCluster_02_UXO1_F"]), ( getPos ammoTruckl), [], 20];
						east revealMine _mine;
						};


			
	
				for "_x" from SIXBUFFER to 2 do {
				
				private  _spawnPos =[_flatPos1, 10, 300, SEVENBUFFER, FIVEBUFFER, FOURBUFFER, FIVEBUFFER] call BIS_fnc_findSafePos;
				private  _flatPos = _spawnPos isFlatEmpty[SEVENBUFFER, SIXBUFFER, EIGHTBUFFER, THHIRDDBUFFER, FIVEBUFFER, false];

				while {(count _flatPos) < SIXBUFFER} do {
					_spawnPos = [_flatPos1, 10, 300, SEVENBUFFER, FIVEBUFFER, FOURBUFFER, FIVEBUFFER] call BIS_fnc_findSafePos;
					_flatPos = _spawnPos isFlatEmpty[SEVENBUFFER, SIXBUFFER, EIGHTBUFFER, THHIRDDBUFFER, FIVEBUFFER, false];
				};
				private _infantryGroup = createGroup [resistance, true]; 
				for "_x" from 1 to 6 do {
					private _squadPos = [[[_flatPos, 10], []], ["water", "out"]] call BIS_fnc_randomPos;
					_unitArray = (missionconfigfile >> "unitList" >> "CSAT" >> "units") call BIS_fnc_getCfgData;
				_unit = selectRandom _unitArray;        _grpMember = _infantryGroup createUnit [_unit, _squadPos, [], 0, "FORM"];
					sleep 1;	
				};
				[_infantryGroup, _flatPos1, 200] call bis_fnc_taskPatrol;
				_infantryGroup enableDynamicSimulation true;
				{
					spawnedUnits pushBack _x;
				} foreach (units _infantryGroup);
			};
			/////////////////////////////////aii//////////////////////
			private _fuzzyPos1 = [((_flatPos select 0) - 200) + (random 300),((_flatPos select 1) - 200) + (random 300),0];

				for "_x" from SIXBUFFER to 2 do {
					private  _spawnPos =[_flatPos, 50, 300, SEVENBUFFER, FIVEBUFFER, FOURBUFFER, FIVEBUFFER] call BIS_fnc_findSafePos;
					private  _flatPos = _spawnPos isFlatEmpty[SEVENBUFFER, SIXBUFFER, EIGHTBUFFER, THHIRDDBUFFER, FIVEBUFFER, false];

						while {(count _flatPos) < SIXBUFFER} do {
							_spawnPos =[_flatPos, 50, 300, SEVENBUFFER, FIVEBUFFER, FOURBUFFER, FIVEBUFFER] call BIS_fnc_findSafePos;
							_flatPos = _spawnPos isFlatEmpty[SEVENBUFFER, SIXBUFFER, EIGHTBUFFER, THHIRDDBUFFER, FIVEBUFFER, false];
					};

					private _infantryGroup = [_flatPos, EAST, (configfile >> "CfgGroups" >> "East" >> "OPF_F" >> "Infantry" >> selectRandom ["OI_reconTeam","OIA_InfAssault","OIA_InfSquad","OIA_InfSquad_Weapons","OIA_InfTeam_AA","OIA_ReconSquad"])] call BIS_fnc_spawnGroup;

					{
						spawnedUnitss pushBack _x;
						AISkillUnitsArray pushBack _x;
					} foreach (units _infantryGroup);
					[_infantryGroup, _flatPos1, 200] call bis_fnc_taskPatrol;
			};

			private _fuzzyPos1 = [((_flatPos select 0) - 200) + (random 300),((_flatPos select 1) - 200) + (random 300),0];

			//////////////////////ai////////////////////////////////////////////



			//////////////////////////////////////////////ai////////////////////////////////////////////////////////
			[west,["aoTask11"],["OPFOR forces are setting up an anti-air battery to hit you guys damned hard! We've picked up their positions with thermal imaging scans and have marked it on your map,This is a priority target, boys!","Anti-Air Battery","matrix_1"],(_fuzzyPos1),0,7,true,"destroy",true] call BIS_fnc_taskCreate;

			_letext12 = "Anti-Air Battery";
			sleep 1;
			"matrix_1" setMarkerPos _fuzzyPos1;
			"matrix_1" setMarkerText _letext12;
							if (true) then {
				
						private _group = createGroup EAST;
						for "_x" from SIXBUFFER to 8 do {
							_unitArray = (missionconfigfile >> "unitList" >> "CSATTropic" >> "specialForces") call BIS_fnc_getCfgData;
							_unit = _unitArray call BIS_fnc_selectRandom;
							_grpMember = _group createUnit [_unit, _flatPos1, [], FIVEBUFFER, "FORM"];
							// _grpMember enableDynamicSimulation true;
						};
						returnedUnits = [_flatPos1, nil, (units _group), (300), MAMANBUFFER, false] call NAK_fnc_AIOccupyBuilding;

						{ deleteVehicle _x } foreach returnedUnits;
						{
							spawnedunits pushBack _x;
							AISkillUnitsArray pushBack _x;
						} foreach (units _group);
				};
				////////////////////////////////////
					if (true) then {
					private _milBuildings = nearestObjects [_flatPos1, MilitaryBuildings, (300)];

					_milBuildingCount = count _milBuildings;
					if (_milBuildingCount > FIVEBUFFER ) then {

							private _group = createGroup EAST;
							for "_x" from SIXBUFFER to 7 do {
								_unitArray = (missionconfigfile >> "unitList" >> "CSAT" >> "units") call BIS_fnc_getCfgData;
								_unit = _unitArray call BIS_fnc_selectRandom;
								_grpMember = _group createUnit [_unit, _flatPos1, [], FIVEBUFFER, "FORM"];
							};
							returnedUnits= [_flatPos1, MilitaryBuildings, (units _group), (300), MAMANBUFFER, false] call NAK_fnc_AIOccupyBuilding;

							{ deleteVehicle _x } foreach returnedUnits;

							{
								spawnedunits pushBack _x;
								AISkillUnitsArray pushBack _x;
							} foreach (units _group);
					};
				};


			sleep 10;
			////////////////////////////////////////////////////////last of the last ////////////////////////////////////////////////////////////////
			private  _spawnPos =[(getMarkerPos currentAO), 10, 700, SEVENBUFFER, FIVEBUFFER, FOURBUFFER, FIVEBUFFER] call BIS_fnc_findSafePos;
			private  _flatPos = _spawnPos isFlatEmpty[SEVENBUFFER, SIXBUFFER, EIGHTBUFFER, THHIRDDBUFFER, FIVEBUFFER, false];

			while {(count _flatPos) < SIXBUFFER} do {
			_spawnPos = [(getMarkerPos currentAO), 10, 700, SEVENBUFFER, FIVEBUFFER, FOURBUFFER, FIVEBUFFER] call BIS_fnc_findSafePos;
			_flatPos = _spawnPos isFlatEmpty[SEVENBUFFER, SIXBUFFER, EIGHTBUFFER, THHIRDDBUFFER, FIVEBUFFER, false];
			};




			private  _flatPos1 = [(_flatPos select 0) - 2, (_flatPos select 1) - 2, (_flatPos select 2)];
			private	_flatPos2 = [(_flatPos select 0) + 2, (_flatPos select 1) + 2, (_flatPos select 2)];
			private	_flatPos3 = [(_flatPos select 0) + 20, (_flatPos select 1) + random 20, (_flatPos select 2)];


				lasirene = "Land_Device_disassembled_F" createVehicle _flatPos;
				waitUntil {!isNull lasirene};
				//[lasirene,1] call BIS_fnc_dataTerminalAnimate;
				lasirene setDir (random 360);
			

			for "_x" from 0 to 12 do {
					private _mine = createMine [(selectRandom ["APERSBoundingMine","BombCluster_02_UXO2_F","BombCluster_02_UXO3_F","BombCluster_03_UXO2_F","BombCluster_03_UXO4_F","BombCluster_02_UXO4_F","BombCluster_02_UXO1_F"]), ( getPos lasirene), [], 20];
						east revealMine _mine;
						};

			private _fuzzyPos1 = [((_flatPos select 0) - 200) + (random 300),((_flatPos select 1) - 200) + (random 300),0];

			[
				lasirene,                                                                           // Object the action is attached to
				"Desactive EMP Device",                                                                       // Title of the action
				"Media\images\taker_ca.paa",                      // Idle icon shown on screen
				"Media\images\leskull_ca.paa",                      // Progress icon shown on screen
				"player distance _target < 6",                                                        // Condition for the action to be shown
				"player distance _target < 6",                                                      // Condition for the action to progress
				{},                                                                                  // Code executed when action starts
				{},                                                                                  // Code executed on every progress tick
				{ _null = [] execVM "Scripts\vehicle\lecaller\DEFUSE\Desaciveoption.sqf"; },                                  // Code executed on completion
				{},                                                                                  // Code executed on interrupted
				[],                                                                                  // Arguments passed to the scripts as _this select 3
				7,                                                                                  // Action duration [s]
				0,                                                                                   // Priority
				false,                                                                                // Remove on completion
				false                                                                                // Show in unconscious state 
				] remoteExec ["BIS_fnc_holdActionAdd",0,lasirene];   

				
	
				for "_x" from SIXBUFFER to 2 do {
				
				private  _spawnPos =[_flatPos1, 10, 300, SEVENBUFFER, FIVEBUFFER, FOURBUFFER, FIVEBUFFER] call BIS_fnc_findSafePos;
				private  _flatPos = _spawnPos isFlatEmpty[SEVENBUFFER, SIXBUFFER, EIGHTBUFFER, THHIRDDBUFFER, FIVEBUFFER, false];

				while {(count _flatPos) < SIXBUFFER} do {
					_spawnPos = [_flatPos1, 10, 300, SEVENBUFFER, FIVEBUFFER, FOURBUFFER, FIVEBUFFER] call BIS_fnc_findSafePos;
					_flatPos = _spawnPos isFlatEmpty[SEVENBUFFER, SIXBUFFER, EIGHTBUFFER, THHIRDDBUFFER, FIVEBUFFER, false];
				};
				private _infantryGroup = createGroup [resistance, true]; 
				for "_x" from 1 to 6 do {
					private _squadPos = [[[_flatPos, 10], []], ["water", "out"]] call BIS_fnc_randomPos;
					_unitArray = (missionconfigfile >> "unitList" >> "CSAT" >> "units") call BIS_fnc_getCfgData;
				_unit = selectRandom _unitArray;        _grpMember = _infantryGroup createUnit [_unit, _squadPos, [], 0, "FORM"];
					sleep 1;	
				};
				[_infantryGroup, _flatPos1, 200] call bis_fnc_taskPatrol;
				_infantryGroup enableDynamicSimulation true;
				{
					spawnedUnits pushBack _x;
				} foreach (units _infantryGroup);
			};
			/////////////////////////////////aii//////////////////////
			private _fuzzyPos1 = [((_flatPos select 0) - 200) + (random 300),((_flatPos select 1) - 200) + (random 300),0];

				for "_x" from SIXBUFFER to 2 do {
					private  _spawnPos =[_flatPos, 50, 300, SEVENBUFFER, FIVEBUFFER, FOURBUFFER, FIVEBUFFER] call BIS_fnc_findSafePos;
					private  _flatPos = _spawnPos isFlatEmpty[SEVENBUFFER, SIXBUFFER, EIGHTBUFFER, THHIRDDBUFFER, FIVEBUFFER, false];

						while {(count _flatPos) < SIXBUFFER} do {
							_spawnPos =[_flatPos, 50, 300, SEVENBUFFER, FIVEBUFFER, FOURBUFFER, FIVEBUFFER] call BIS_fnc_findSafePos;
							_flatPos = _spawnPos isFlatEmpty[SEVENBUFFER, SIXBUFFER, EIGHTBUFFER, THHIRDDBUFFER, FIVEBUFFER, false];
					};

					private _infantryGroup = [_flatPos, EAST, (configfile >> "CfgGroups" >> "East" >> "OPF_F" >> "Infantry" >> selectRandom ["OI_reconTeam","OIA_InfAssault","OIA_InfSquad","OIA_InfSquad_Weapons","OIA_InfTeam_AA","OIA_ReconSquad"])] call BIS_fnc_spawnGroup;

					{
						spawnedUnitss pushBack _x;
						AISkillUnitsArray pushBack _x;
					} foreach (units _infantryGroup);
					[_infantryGroup, _flatPos1, 200] call bis_fnc_taskPatrol;
			};


			[west,["aoTask12"],["Deactivate the EMP Device Before Detonation","Deactivate EMP Device","matrix_2"],(_fuzzyPos1),0,9,true,"navigate",true] call BIS_fnc_taskCreate;

			_letext12 = "Deactivate EMP Device";
			sleep 1;
			"matrix_2" setMarkerPos _fuzzyPos1;
			"matrix_2" setMarkerText _letext12;
							if (true) then {
				
						private _group = createGroup EAST;
						for "_x" from SIXBUFFER to 8 do {
							_unitArray = (missionconfigfile >> "unitList" >> "CSATTropic" >> "specialForces") call BIS_fnc_getCfgData;
							_unit = _unitArray call BIS_fnc_selectRandom;
							_grpMember = _group createUnit [_unit, _flatPos1, [], FIVEBUFFER, "FORM"];
							// _grpMember enableDynamicSimulation true;
						};
						returnedUnits = [_flatPos1, nil, (units _group), (300), MAMANBUFFER, false] call NAK_fnc_AIOccupyBuilding;

						{ deleteVehicle _x } foreach returnedUnits;
						{
							spawnedunits pushBack _x;
							AISkillUnitsArray pushBack _x;
						} foreach (units _group);
				};
				////////////////////////////////////
					if (true) then {
					private _milBuildings = nearestObjects [_flatPos1, MilitaryBuildings, (300)];

					_milBuildingCount = count _milBuildings;
					if (_milBuildingCount > FIVEBUFFER ) then {

							private _group = createGroup EAST;
							for "_x" from SIXBUFFER to 7 do {
								_unitArray = (missionconfigfile >> "unitList" >> "CSAT" >> "units") call BIS_fnc_getCfgData;
								_unit = _unitArray call BIS_fnc_selectRandom;
								_grpMember = _group createUnit [_unit, _flatPos1, [], FIVEBUFFER, "FORM"];
							};
							returnedUnits= [_flatPos1, MilitaryBuildings, (units _group), (300), MAMANBUFFER, false] call NAK_fnc_AIOccupyBuilding;

							{ deleteVehicle _x } foreach returnedUnits;

							{
								spawnedunits pushBack _x;
								AISkillUnitsArray pushBack _x;
							} foreach (units _group);
					};
				};


						
			////////////////////////////////////////////////////////last of the last ////////////////////////////////////////////////////////////////
			private  _spawnPos =[(getMarkerPos currentAO), 10, 700, SEVENBUFFER, FIVEBUFFER, FOURBUFFER, FIVEBUFFER] call BIS_fnc_findSafePos;
			private  _flatPos = _spawnPos isFlatEmpty[SEVENBUFFER, SIXBUFFER, EIGHTBUFFER, THHIRDDBUFFER, FIVEBUFFER, false];

			while {(count _flatPos) < SIXBUFFER} do {
			_spawnPos = [(getMarkerPos currentAO), 10, 700, SEVENBUFFER, FIVEBUFFER, FOURBUFFER, FIVEBUFFER] call BIS_fnc_findSafePos;
			_flatPos = _spawnPos isFlatEmpty[SEVENBUFFER, SIXBUFFER, EIGHTBUFFER, THHIRDDBUFFER, FIVEBUFFER, false];
			};

			private  _flatPos1 = [(_flatPos select 0) - 2, (_flatPos select 1) - 2, (_flatPos select 2)];
			private	_flatPos2 = [(_flatPos select 0) + 2, (_flatPos select 1) + 2, (_flatPos select 2)];
			private	_flatPos3 = [(_flatPos select 0) + 20, (_flatPos select 1) + random 20, (_flatPos select 2)];


				laradioante = "Land_TTowerBig_2_F" createVehicle _flatPos;
				waitUntil {!isNull lasirene};
				//[lasirene,1] call BIS_fnc_dataTerminalAnimate;
				laradioante setDir (random 360);
			

			for "_x" from 0 to 12 do {
					private _mine = createMine [(selectRandom ["APERSBoundingMine","BombCluster_02_UXO2_F","BombCluster_02_UXO3_F","BombCluster_03_UXO2_F","BombCluster_03_UXO4_F","BombCluster_02_UXO4_F","BombCluster_02_UXO1_F"]), ( getPos laradioante), [], 20];
						east revealMine _mine;
						};

			private _fuzzyPos1 = [((_flatPos select 0) - 200) + (random 300),((_flatPos select 1) - 200) + (random 300),0];
		
				for "_x" from SIXBUFFER to 2 do {
				
				private  _spawnPos =[_flatPos1, 10, 300, SEVENBUFFER, FIVEBUFFER, FOURBUFFER, FIVEBUFFER] call BIS_fnc_findSafePos;
				private  _flatPos = _spawnPos isFlatEmpty[SEVENBUFFER, SIXBUFFER, EIGHTBUFFER, THHIRDDBUFFER, FIVEBUFFER, false];

				while {(count _flatPos) < SIXBUFFER} do {
					_spawnPos = [_flatPos1, 10, 300, SEVENBUFFER, FIVEBUFFER, FOURBUFFER, FIVEBUFFER] call BIS_fnc_findSafePos;
					_flatPos = _spawnPos isFlatEmpty[SEVENBUFFER, SIXBUFFER, EIGHTBUFFER, THHIRDDBUFFER, FIVEBUFFER, false];
				};
				private _infantryGroup = createGroup [resistance, true]; 
				for "_x" from 1 to 6 do {
					private _squadPos = [[[_flatPos, 10], []], ["water", "out"]] call BIS_fnc_randomPos;
					_unitArray = (missionconfigfile >> "unitList" >> "CSAT" >> "units") call BIS_fnc_getCfgData;
				_unit = selectRandom _unitArray;        _grpMember = _infantryGroup createUnit [_unit, _squadPos, [], 0, "FORM"];
					sleep 1;	
				};
				[_infantryGroup, _flatPos1, 200] call bis_fnc_taskPatrol;
				_infantryGroup enableDynamicSimulation true;
				{
					spawnedUnits pushBack _x;
				} foreach (units _infantryGroup);
			};
			/////////////////////////////////aii//////////////////////
			private _fuzzyPos1 = [((_flatPos select 0) - 200) + (random 300),((_flatPos select 1) - 200) + (random 300),0];

				for "_x" from SIXBUFFER to 2 do {
					private  _spawnPos =[_flatPos, 50, 300, SEVENBUFFER, FIVEBUFFER, FOURBUFFER, FIVEBUFFER] call BIS_fnc_findSafePos;
					private  _flatPos = _spawnPos isFlatEmpty[SEVENBUFFER, SIXBUFFER, EIGHTBUFFER, THHIRDDBUFFER, FIVEBUFFER, false];

						while {(count _flatPos) < SIXBUFFER} do {
							_spawnPos =[_flatPos, 50, 300, SEVENBUFFER, FIVEBUFFER, FOURBUFFER, FIVEBUFFER] call BIS_fnc_findSafePos;
							_flatPos = _spawnPos isFlatEmpty[SEVENBUFFER, SIXBUFFER, EIGHTBUFFER, THHIRDDBUFFER, FIVEBUFFER, false];
					};

					private _infantryGroup = [_flatPos, EAST, (configfile >> "CfgGroups" >> "East" >> "OPF_F" >> "Infantry" >> selectRandom ["OI_reconTeam","OIA_InfAssault","OIA_InfSquad","OIA_InfSquad_Weapons","OIA_InfTeam_AA","OIA_ReconSquad"])] call BIS_fnc_spawnGroup;

					{
						spawnedUnitss pushBack _x;
						AISkillUnitsArray pushBack _x;
					} foreach (units _infantryGroup);
					[_infantryGroup, _flatPos1, 200] call bis_fnc_taskPatrol;
			};

			[west,["aoTask16"],["Take down that radio tower to stop the enemy from calling in CAS.","Destroy Radio Tower","sideCircle"],(_fuzzyPos1),0,0,true,"danger",true] call BIS_fnc_taskCreate;

			_letext12 = "Destroy Radio Tower";
			sleep 1;
			"matrix_7" setMarkerPos _fuzzyPos1;
			"matrix_7" setMarkerText _letext12;

				if (true) then {
				
						private _group = createGroup EAST;
						for "_x" from SIXBUFFER to 8 do {
							_unitArray = (missionconfigfile >> "unitList" >> "CSATTropic" >> "specialForces") call BIS_fnc_getCfgData;
							_unit = _unitArray call BIS_fnc_selectRandom;
							_grpMember = _group createUnit [_unit, _flatPos1, [], FIVEBUFFER, "FORM"];
							// _grpMember enableDynamicSimulation true;
						};
						returnedUnits = [_flatPos1, nil, (units _group), (300), MAMANBUFFER, false] call NAK_fnc_AIOccupyBuilding;

						{ deleteVehicle _x } foreach returnedUnits;
						{
							spawnedunits pushBack _x;
							AISkillUnitsArray pushBack _x;
						} foreach (units _group);
				};
				////////////////////////////////////
					if (true) then {
					private _milBuildings = nearestObjects [_flatPos1, MilitaryBuildings, (300)];

					_milBuildingCount = count _milBuildings;
					if (_milBuildingCount > FIVEBUFFER ) then {

							private _group = createGroup EAST;
							for "_x" from SIXBUFFER to 7 do {
								_unitArray = (missionconfigfile >> "unitList" >> "CSAT" >> "units") call BIS_fnc_getCfgData;
								_unit = _unitArray call BIS_fnc_selectRandom;
								_grpMember = _group createUnit [_unit, _flatPos1, [], FIVEBUFFER, "FORM"];
							};
							returnedUnits= [_flatPos1, MilitaryBuildings, (units _group), (300), MAMANBUFFER, false] call NAK_fnc_AIOccupyBuilding;

							{ deleteVehicle _x } foreach returnedUnits;

							{
								spawnedunits pushBack _x;
								AISkillUnitsArray pushBack _x;
							} foreach (units _group);
					};
				};

				
				leplane = createVehicle [(selectRandom ["O_Plane_Fighter_02_Stealth_F","I_Plane_Fighter_03_AA_F","O_Plane_CAS_02_dynamicLoadout_F","I_Plane_Fighter_04_F","O_Plane_Fighter_02_F"]), getMarkerPos(selectRandom  ["jetleemarker","jetleemarker1","jetleemarker2","jetleemarker3"]), [], 0, "FLY"];
				_pilotguy = createGroup [EAST, true]; _lepilotguy = _pilotguy createUnit ["O_Pilot_F", [26761.4,24593.4,0.000909805] , [], 0, "FORM"]; 
				
				leplane addEventHandler ["Fired",{
					(_this select 0) setVehicleAmmo 1
					}];

				((units _pilotguy) select 0) moveInDriver leplane;
				((units _pilotguy) select 0) setRank "COLONEL";
				((units _pilotguy) select 0) flyInHeight 50;
				_wpcas = _pilotguy addWaypoint [getMarkerPos(selectRandom ["matrix_7"]), 0];
				_wpcas setWaypointBehaviour "SAFE";
				_wpcas setWaypointCombatMode "RED";
				_wpcas setWaypointCompletionRadius 1900;
					
					_pilotguy setCombatMode "RED";
					_pilotguy setBehaviour "COMBAT";
					_pilotguy setSpeedMode "FULL";
				{
					lesplane pushBack _x;
				} foreach (units _pilotguy);



			/////////////////////////////////////////////////////////////////////////////////////////////////////////////////
			_loopVar = TRUE;
			_doTargets = [];
			_targetSelect = objNull;
			lebomberraduis = 300;

			


			[] call NAK_fnc_vbnet;
			flag1 = 0;
			flag2 = 0;
			flag3 = 0;
			flag4 = 0;
			_thecounterforemp = 0; flag5 = 0;
			_empMessages1 =  "EMP Device Detonation in 30S !";
			_empMessages2 =  "EMP Device Detonation in 8 Minutes !";
			_empMessages3 =  "EMP Device Detonation in 5 Minutes !";



			while {true} do {
				
			_lesecondthing = missionNamespace getVariable "lesecondthing";
			_lesecondthing2 = missionNamespace getVariable "lesecondthing2";
			_desactivefucn = missionNamespace getVariable "desactivefucn";

			// [lasirene] remoteExec ["lavieestbelle", -2]; 


			//[lasirene,["lavraisirene",1000,1]] remoteExec ["say3D",0];

			if ((alive priorityObj1l) && (alive priorityObj2l)) then {   
			sleep 3;

			//========== Small targeting system routine
				
				_doTargets = [];
				_targetSelect = objNull;
				_targetList = _flatPos nearEntities [["Air"],7500];
				if ((count _targetList) > 0) then {
					{_priorityGroup reveal [_x,4];} forEach _targetList;
					_targetListEnemy = [];
					{
						if ((side _x) == west) then {
							0 = _targetListEnemy pushBack _x;
						};
					} count _targetList;
					
					if ((count _targetListEnemy) > 0) then {
						{
							if ((getPos _x select 2) > 25) then {
								0 = _doTargets pushBack _x;
							};
						} count _targetListEnemy;
						
						if ((count _doTargets) > 0) then {
							_targetSelect = _doTargets select (floor (random (count _doTargets)));
							if (canFire priorityObj1l) then {
								priorityObj1l doWatch [(getPos _targetSelect select 0),(getPos _targetSelect select 1),2000];
								priorityObj1l doTarget _targetSelect;
								sleep 2;
								priorityObj1l fireAtTarget [_targetSelect,"missiles_titan"];
								sleep 2;
								if (canFire priorityObj2l) then {
									_targetSelect = _doTargets select (floor (random (count _doTargets)));
									priorityObj2l doWatch [(getPos _targetSelect select 0),(getPos _targetSelect select 1),2000];
									priorityObj2l doTarget _targetSelect;
									sleep 2;
									priorityObj2l fireAtTarget [_targetSelect,"missiles_titan"];
									sleep 2;
								};
							} else {
								if (canFire priorityObj2l) then {
									priorityObj2l doTarget _targetSelect;
									sleep 2;
									priorityObj2l doFire _targetSelect;
									sleep 2;
								};
							};
						};
					};
				};
			};

			if (!alive priorityObj1l) then {
				if (!alive priorityObj2l) then {
					if ((_lesecondthing == 0) && (flag1 == 0)) then 
					{
						["aoTask11", "SUCCEEDED",true] call BIS_fnc_taskSetState;
						sleep 5;
						["aoTask11",west] call bis_fnc_deleteTask;
						//-------------------- 10. DELETE
						"matrix_1" setMarkerPos [-35206.1,-25793.5];
						sleep 2;
						{_x removeEventHandler ["Fired", 0];} forEach [priorityObj1l,priorityObj2l];
						{_x removeEventHandler ["HandleDamage",1];} forEach [priorityObj1l,priorityObj2l];
						{deleteVehicle _x;} forEach [priorityObj1l,priorityObj2l,ammoTruckl];
						missionNamespace setVariable ["lesecondthing", 1, true];
						flag1 = 1; 
					};
				};
			};


			if ((!alive lasirene) && (_desactivefucn == 0 ) && (flag2 == 0) ) then {
					

				["aoTask12", "Failed",true] call BIS_fnc_taskSetState;
				sleep 5;
				["aoTask12",west] call bis_fnc_deleteTask;
			"matrix_2" setMarkerPos [-35206.1,-25793.5];
				[currentAO] remoteExecCall ["NAK_fnc_vbnet11", 0, false];
				flag2 = 1;
				deleteVehicle lasirene;

			};


			///////////////////////////////////////////////////////////////////////

			if ((alive lasirene) && (_desactivefucn == 1) && (flag2 == 0) ) then {
					

				["aoTask12", "SUCCEEDED",true] call BIS_fnc_taskSetState;
				sleep 5;
				["aoTask12",west] call bis_fnc_deleteTask;
				"matrix_2" setMarkerPos [-35206.1,-25793.5];
				//-------------------- 10. DELETE
				sleep 2;
				deleteVehicle lasirene;
				flag2 = 1;
			};

			///////////////////////////////timer for sirene///////////////////////

			if ((_thecounterforemp == 5) && (alive lasirene) && (flag2 == 0))  then 
			{
				[RangeMaster,_empMessages2] remoteexec ['globalChat',-2];


			};

			/////////////////////
			if ((_thecounterforemp == 10) && (alive lasirene) && (flag2 == 0))  then 
			{
				[RangeMaster,_empMessages3] remoteexec ['globalChat',-2];


			};
			//////////////////2
			if ((_thecounterforemp == 15) && (alive lasirene) && (flag2 == 0))  then 
			{
				["aoTask12", "Failed",true] call BIS_fnc_taskSetState;
				sleep 5;
				["aoTask12",west] call bis_fnc_deleteTask;
				"matrix_2" setMarkerPos [-35206.1,-25793.5];

				[currentAO] remoteExecCall ["NAK_fnc_vbnet11", 0, false];
				flag2 = 1;
				deleteVehicle lasirene;;
			};

			//////////////////////////////////////////////////////////////////////////////////////////


			if ((!alive lapriorityObj2) && (!alive lapriorityObj1) && (flag3 == 0) ) then {
				if (_lesecondthing2 == 0) then {	
					["aoTask10", "SUCCEEDED",true] call BIS_fnc_taskSetState;
					sleep 5;
					["aoTask10",west] call bis_fnc_deleteTask;
					"matrix" setMarkerPos [-35206.1,-25793.5];
					missionNamespace setVariable ["lesecondthing3", 1, true];
					{ _x removeEventHandler ["Fired", 0]; } forEach [lapriorityObj1,lapriorityObj2];
					{ deleteVehicle _x } forEach [lapriorityObj1,lapriorityObj2,leammoTruck];		
					missionNamespace setVariable ["lesecondthing2", 1, true];
					flag3 = 1;
				};

			};


			/*if (currentAO in leboatao) then {
				if (count list badmainMission007 < 3) then { ["aoTask15", "Succeeded",true] call BIS_fnc_taskSetState; sleep 3; ["aoTask15",west] call bis_fnc_deleteTask; "matrix_4" setMarkerPos [-35206.1,-25793.5];deleteVehicle  badmainMission007; flag5 = 1;};
				
				if ((flag1 == 1) && (flag2 == 1) && (flag3 == 1) && (flag5 == 1) ) exitWith {
					missionNamespace setVariable ["lesecondthing", 0, true];
					missionNamespace setVariable ["lesecondthing2", 0, true];
					missionNamespace setVariable ["desactivefucn", 0, true];
					deleteVehicle lasirene;
					{deleteVehicle _x;} count allMines; 
					lamatrix = 1;
				};
			}
			else
			{
				
				if ((flag1 == 1) && (flag2 == 1) && (flag3 == 1) ) exitWith {
					missionNamespace setVariable ["lesecondthing", 0, true];
					missionNamespace setVariable ["lesecondthing2", 0, true];
					missionNamespace setVariable ["desactivefucn", 0, true];
					deleteVehicle lasirene;
					{deleteVehicle _x;} count allMines; 
					lamatrix = 1;
				};
			};*/

			
			if ((!alive laradioante) && (flag5 == 0) ) then {
					
				["aoTask16", "SUCCEEDED",true] call BIS_fnc_taskSetState;
				sleep 5;
				["aoTask16",west] call bis_fnc_deleteTask;
				"matrix_7" setMarkerPos [-35206.1,-25793.5];
				//-------------------- 10. DELETE
				sleep 2;
				deleteVehicle lasirene;
				deleteVehicle leplane;
				leplane removeEventHandler ["Fired", 0];
				flag5 = 1;
				{ deleteVehicle _x } foreach lesplane;

			};


			///////////////////////////////////////////////////////////////////////

			if ((alive laradioante) && (!alive leplane) && (flag5 == 0) ) then {
				leplane removeEventHandler ["Fired", 0];
				leplane = createVehicle [(selectRandom ["O_Plane_Fighter_02_Stealth_F","I_Plane_Fighter_03_AA_F","O_Plane_CAS_02_dynamicLoadout_F","I_Plane_Fighter_04_F","O_Plane_Fighter_02_F"]), getMarkerPos(selectRandom  ["jetleemarker","jetleemarker1","jetleemarker2","jetleemarker3"]), [], 0, "FLY"];
				_pilotguy = createGroup [EAST, true]; _lepilotguy = _pilotguy createUnit ["O_Pilot_F", [26761.4,24593.4,0.000909805] , [], 0, "FORM"]; 
				
				leplane addEventHandler ["Fired",{
					(_this select 0) setVehicleAmmo 1
					}];

				((units _pilotguy) select 0) moveInDriver leplane;
				((units _pilotguy) select 0) setRank "COLONEL";
				((units _pilotguy) select 0) flyInHeight 50;
				_wpcas = _pilotguy addWaypoint [getMarkerPos(selectRandom ["matrix_5","matrix_6","matrix_7"]), 0];
				_wpcas setWaypointBehaviour "SAFE";
				_wpcas setWaypointCombatMode "RED";
				_wpcas setWaypointCompletionRadius 1900;
					
					_pilotguy setCombatMode "RED";
					_pilotguy setBehaviour "COMBAT";
					_pilotguy setSpeedMode "FULL";
				{
					lesplane pushBack _x;
				} foreach (units _pilotguy);
				{
					_x addCuratorEditableObjects [lesplane, true];
				} foreach allCurators;

			};


			if ((flag1 == 1) && (flag2 == 1) && (flag3 == 1) && (flag5 == 1) ) exitWith {
					missionNamespace setVariable ["lesecondthing", 0, true];
					missionNamespace setVariable ["lesecondthing2", 0, true];
					missionNamespace setVariable ["desactivefucn", 0, true];
					deleteVehicle lasirene;
					{deleteVehicle _x;} count allMines; 
				};

			sleep 60;
			_thecounterforemp = _thecounterforemp + 1;

			};


				};
		};/////END ALL case



		waitUntil {sleep 40;(count list badmainMissionTreshold < 12)};

		deleteVehicle badmainMissionTreshold;
			{
				deleteVehicle _x;
			} foreach airCavReturnGrp;
			{
			
				deleteVehicle _x;
			} foreach constructsArray;
			{
			
				deleteVehicle _x;
			} foreach spawnedUnits;
			{
			
				deleteVehicle _x;
			} foreach spawnedUnitss;

			_targetStartText = format
			[
				"<t align='center' size='2.2'>Secured</t><br/><t size='1.5' align='center' color='#FFCF11'>%1</t><br/>____________________<br/>Good work out there. We have provided you with some light assets to help you redeploy to the next assignment.",
				currentAO
			];
			["MainAoTask", "Succeeded",true] call BIS_fnc_taskSetState;
			sleep SARAHBUFFER;
			["MainAoTask",west] call bis_fnc_deleteTask;
			[_targetStartText] remoteExec ["NAK_fnc_globalHint", -2, false];

			{ _x setMarkerPos [-35206.1,-25793.5]; } forEach ["aoCircle","aoMarker"];    {deleteVehicle _x;	} foreach stataticDestoyer;

			   ["aoTask2", "CANCELED",true] call BIS_fnc_taskSetState;
				sleep 1;
				["aoTask2",west] call bis_fnc_deleteTask;
				["aoTask4", "CANCELED",true] call BIS_fnc_taskSetState;
				sleep 1;
				["aoTask4",west] call bis_fnc_deleteTask;
				["aoTask1", "CANCELED",true] call BIS_fnc_taskSetState;
				sleep 1;
				["aoTask1",west] call bis_fnc_deleteTask;
				["aoTask6", "CANCELED",true] call BIS_fnc_taskSetState;
				sleep 1;
				["aoTask6",west] call bis_fnc_deleteTask;
				["aoTask3", "CANCELED",true] call BIS_fnc_taskSetState;
				sleep 1;
				["aoTask3",west] call bis_fnc_deleteTask;
				["aoTask15", "CANCELED",true] call BIS_fnc_taskSetState; 
				sleep 1;
				["aoTask15",west] call bis_fnc_deleteTask; 
				["aoTask12", "CANCELED",true] call BIS_fnc_taskSetState;
				sleep 1;
				["aoTask12",west] call bis_fnc_deleteTask;
				["aoTask10", "CANCELED",true] call BIS_fnc_taskSetState;
				sleep 1;
				["aoTask10",west] call bis_fnc_deleteTask;
				["aoTask11", "CANCELED",true] call BIS_fnc_taskSetState;
				sleep 1;
				["aoTask11",west] call bis_fnc_deleteTask;
				{ _x setMarkerPos [-35206.1,-25793.5]; } forEach ["matrix","matrix_1","matrix_2","matrix_3","matrix_4"];

		//////////////////////////////////////////////////////////////////////////////////////////defend///////////////////////////////////////////////////////

		if (random 7 > 3 ) then
		{			
			{_x setMarkerPos (getMarkerPos currentAO);} forEach ["aoCircleDefend","aoMarkerDefend"];
			{_x setMarkerText currentAO;} forEach ["aoMarkerDefend"];
			_mainAoTaskName = format
			[
			"Defend %1",
				currentAO
			];
			_mainAoTaskDesc = format
			[
			"Protect %1 of hostile forces.",
				currentAO
			];
			[west,["MainAoTask"],[_mainAoTaskDesc,_mainAoTaskName,currentAO],(getMarkerPos currentAO),0,0,true,"defend",true] call BIS_fnc_taskCreate;
			sleep 1;
			_targetStartText = format
			[
				"<img size='7' image='Media\images\nakcommand.paa'/><br/><t align='center' size='2.2' color='#3011ff'>Defend Target</t><br/><t size='1.5' align='center' color='#FFCF11'>%1</t><br/>____________________<br/>You have 10 minutes to Defend %1.<br/><br/><t color='#FFCF11' >GOOD LUCK SOLIDIER.</t>",
				currentAO
			];
			[_targetStartText] remoteExec ["NAK_fnc_globalHint", -2, false];

			lesarrayofunit = [];

			spawnedUnitstes = [];
			
		

	

			//-------------------------------------------------- random vehcs

			if (true) then {
				for "_x" from 0 to 5 do {
					private  _randomPos = [_AOpos, BUFFER, NASBUFFER, SEVENBUFFER, FIVEBUFFER, FOURBUFFER, FIVEBUFFER] call BIS_fnc_findSafePos;
					private _vehc = (selectRandom RandomVehicleList) createVehicle _randompos;

					_vehc allowCrewInImmobile true;
					_vehc lock 2;
				private   _grp1 = createGroup [east, true];
					[_vehc,_grp1,"CSAT"] call NAK_fnc_createCrew;
					spawnedUnitss pushBack _vehc;  
					{
						spawnedUnitss pushBack _x;
					} foreach (crew _vehc);
					private _group = group _vehc;

					[_group, _AOpos] call BIS_fnc_taskAttack; 
					_group setSpeedMode "LIMITED"; _group setCombatMode "RED"; _group setBehaviour "STEALTH"; 
				};sleep 30;  {if (!(alive _x)) then { deleteVehicle _x;	};} foreach spawnedUnitss;
			};
		
			sleep 2;
			/////////////

			if(true) then {
				private _airGroup = createGroup [east, true];
				private _randomPos =  [_AOpos, BUFFER, JESSIBUFFER, SEVENBUFFER, FIVEBUFFER, FOURBUFFER, FIVEBUFFER] call BIS_fnc_findSafePos;
				private _air = selectRandom ["O_Heli_Attack_02_dynamicLoadout_F","I_Heli_light_03_dynamicLoadout_F","O_Heli_Light_02_dynamicLoadout_F","O_Heli_Attack_02_dynamicLoadout_F"] createVehicle [_randomPos select FIVEBUFFER,_randomPos select SIXBUFFER,CLAWSBUFFER];
				waitUntil{!isNull _air};
				_air engineOn true;
				_air setPos [_randomPos select FIVEBUFFER,_randomPos select SIXBUFFER,AUSTINBUFFER];

				_air spawn
				{
					private["_x"];
					for [{_x=FIVEBUFFER},{_x<=HOUSTONBUFFER},{_x=_x+SIXBUFFER}] do
					{
						_this setVelocity [FIVEBUFFER,FIVEBUFFER,FIVEBUFFER];
						sleep SIXBUFFER;
					};
				};

					"O_helipilot_F" createUnit [_randomPos,_airGroup];
					((units _airGroup) select FIVEBUFFER) assignAsDriver _air;
					((units _airGroup) select FIVEBUFFER) moveInDriver _air;
					"O_helipilot_F" createUnit [_randomPos,_airGroup];
					((units _airGroup) select SIXBUFFER) assignAsGunner _air;
					((units _airGroup) select SIXBUFFER) moveInGunner _air;

				spawnedUnitss pushBack _air;

					{
						spawnedUnitss pushBack _x;
					} foreach (crew _air);

					private _group = group _air;
				[_airGroup, _AOpos, ROCKYBUFFER] call BIS_fnc_taskPatrol;
				_air flyInHeight AUSTINBUFFER;
				_airGroup setCombatMode "RED";
				_air lock SEVENBUFFER;		

			};

			
		
		for "_x" from SIXBUFFER to 2 do {
			private  _spawnPos =[_AOpos, CLAWSBUFFER, NASBUFFER, SEVENBUFFER, FIVEBUFFER, FOURBUFFER, FIVEBUFFER] call BIS_fnc_findSafePos;
			private  _flatPos = _spawnPos isFlatEmpty[SEVENBUFFER, SIXBUFFER, EIGHTBUFFER, THHIRDDBUFFER, FIVEBUFFER, false];

			while {(count _flatPos) < SIXBUFFER} do {
				_spawnPos = [_AOpos, CLAWSBUFFER, NASBUFFER, SEVENBUFFER, FIVEBUFFER, FOURBUFFER, FIVEBUFFER] call BIS_fnc_findSafePos;
				_flatPos = _spawnPos isFlatEmpty[SEVENBUFFER, SIXBUFFER, EIGHTBUFFER, THHIRDDBUFFER, FIVEBUFFER, false];
			};
			private _infantryGroup = [_flatPos, EAST, (configfile >> "CfgGroups" >> "East" >> "OPF_F" >> "Infantry" >> selectRandom ["OI_reconTeam","OIA_InfAssault","OIA_InfSquad","OIA_InfSquad_Weapons","OIA_InfTeam_AA","OIA_ReconSquad"])] call BIS_fnc_spawnGroup;
			{
				spawnedUnitss pushBack _x;
				AISkillUnitsArray pushBack _x;
			} foreach (units _infantryGroup);
			[_infantryGroup,_AOpos] call BIS_fnc_taskAttack; _infantryGroup enableDynamicSimulation true;
			sleep 1;
		};

		/////2
		for "_x" from SIXBUFFER to 2 do {
			private  _spawnPos =[_AOpos, CLAWSBUFFER, NASBUFFER, SEVENBUFFER, FIVEBUFFER, FOURBUFFER, FIVEBUFFER] call BIS_fnc_findSafePos;
			private  _flatPos = _spawnPos isFlatEmpty[SEVENBUFFER, SIXBUFFER, EIGHTBUFFER, THHIRDDBUFFER, FIVEBUFFER, false];

			while {(count _flatPos) < SIXBUFFER} do {
				_spawnPos = [_AOpos, CLAWSBUFFER, NASBUFFER, SEVENBUFFER, FIVEBUFFER, FOURBUFFER, FIVEBUFFER] call BIS_fnc_findSafePos;
				_flatPos = _spawnPos isFlatEmpty[SEVENBUFFER, SIXBUFFER, EIGHTBUFFER, THHIRDDBUFFER, FIVEBUFFER, false];
			};
			private _infantryGroup = [_flatPos, EAST, (configfile >> "CfgGroups" >> "East" >> "OPF_F" >> "Infantry" >> selectRandom ["OI_reconTeam","OIA_InfAssault","OIA_InfSquad","OIA_InfSquad_Weapons","OIA_InfTeam_AA","OIA_ReconSquad"])] call BIS_fnc_spawnGroup;
			{
				spawnedUnitss pushBack _x;
				AISkillUnitsArray pushBack _x;
			} foreach (units _infantryGroup);
			[_infantryGroup,_AOpos] call BIS_fnc_taskAttack; _infantryGroup enableDynamicSimulation true;
			sleep 1;
		};

		////
		for "_x" from SIXBUFFER to 2 do {
			private  _spawnPos =[_AOpos, CLAWSBUFFER, NASBUFFER, SEVENBUFFER, FIVEBUFFER, FOURBUFFER, FIVEBUFFER] call BIS_fnc_findSafePos;
			private  _flatPos = _spawnPos isFlatEmpty[SEVENBUFFER, SIXBUFFER, EIGHTBUFFER, THHIRDDBUFFER, FIVEBUFFER, false];

			while {(count _flatPos) < SIXBUFFER} do {
				_spawnPos = [_AOpos, CLAWSBUFFER, NASBUFFER, SEVENBUFFER, FIVEBUFFER, FOURBUFFER, FIVEBUFFER] call BIS_fnc_findSafePos;
				_flatPos = _spawnPos isFlatEmpty[SEVENBUFFER, SIXBUFFER, EIGHTBUFFER, THHIRDDBUFFER, FIVEBUFFER, false];
			};
			private _infantryGroup = [_flatPos, EAST, (configfile >> "CfgGroups" >> "East" >> "OPF_F" >> "Infantry" >> selectRandom ["OI_reconTeam","OIA_InfAssault","OIA_InfSquad","OIA_InfSquad_Weapons","OIA_InfTeam_AA","OIA_ReconSquad"])] call BIS_fnc_spawnGroup;
			{
				spawnedUnitss pushBack _x;
				AISkillUnitsArray pushBack _x;
			} foreach (units _infantryGroup);
			[_infantryGroup,_AOpos] call BIS_fnc_taskAttack; _infantryGroup enableDynamicSimulation true;
			sleep 1;
		};
		{
			_x setSkill ["general", 1];
			_x setSkill ["aimingAccuracy", 0.8];
			_x setSkill ["aimingShake", 0.5];
			_x setSkill ["aimingSpeed", 0.7];
			_x setSkill ["spotDistance", 0.9];
			_x setSkill ["spotTime", 0.7];
			_x setSkill ["courage", 1];
			_x setSkill ["reloadSpeed", 0.5];
			_x setSkill ["commanding", 1];
		} foreach AISkillUnitsArray;

		badmainMissionTresholds = createTrigger ["EmptyDetector", getMarkerPos currentAO];
		badmainMissionTresholds setTriggerArea [800, 800, FIVEBUFFER, false];
		badmainMissionTresholds setTriggerActivation ["EAST", "PRESENT", false];
		badmainMissionTresholds setTriggerStatements ["this","",""];
		
		[] call NAK_fnc_vbnet;
		sleep 120;
		waitUntil {sleep 30;  {if (!(alive _x)) then { deleteVehicle _x;	};} foreach spawnedUnitss;(count list badmainMissionTresholds < 20)};

		
		for "_x" from SIXBUFFER to 2 do {
			private  _spawnPos =[_AOpos, CLAWSBUFFER, NASBUFFER, SEVENBUFFER, FIVEBUFFER, FOURBUFFER, FIVEBUFFER] call BIS_fnc_findSafePos;
			private  _flatPos = _spawnPos isFlatEmpty[SEVENBUFFER, SIXBUFFER, EIGHTBUFFER, THHIRDDBUFFER, FIVEBUFFER, false];

			while {(count _flatPos) < SIXBUFFER} do {
				_spawnPos = [_AOpos, CLAWSBUFFER, NASBUFFER, SEVENBUFFER, FIVEBUFFER, FOURBUFFER, FIVEBUFFER] call BIS_fnc_findSafePos;
				_flatPos = _spawnPos isFlatEmpty[SEVENBUFFER, SIXBUFFER, EIGHTBUFFER, THHIRDDBUFFER, FIVEBUFFER, false];
			};
			private _infantryGroup = [_flatPos, EAST, (configfile >> "CfgGroups" >> "East" >> "OPF_F" >> "Infantry" >> selectRandom ["OI_reconTeam","OIA_InfAssault","OIA_InfSquad","OIA_InfSquad_Weapons","OIA_InfTeam_AA","OIA_ReconSquad"])] call BIS_fnc_spawnGroup;
			{
				spawnedUnitss pushBack _x;
				AISkillUnitsArray pushBack _x;
			} foreach (units _infantryGroup);
			[_infantryGroup,_AOpos] call BIS_fnc_taskAttack; _infantryGroup enableDynamicSimulation true;
			sleep 1;
		};

		/////2
		for "_x" from SIXBUFFER to 2 do {
			private  _spawnPos =[_AOpos, CLAWSBUFFER, NASBUFFER, SEVENBUFFER, FIVEBUFFER, FOURBUFFER, FIVEBUFFER] call BIS_fnc_findSafePos;
			private  _flatPos = _spawnPos isFlatEmpty[SEVENBUFFER, SIXBUFFER, EIGHTBUFFER, THHIRDDBUFFER, FIVEBUFFER, false];

			while {(count _flatPos) < SIXBUFFER} do {
				_spawnPos = [_AOpos, CLAWSBUFFER, NASBUFFER, SEVENBUFFER, FIVEBUFFER, FOURBUFFER, FIVEBUFFER] call BIS_fnc_findSafePos;
				_flatPos = _spawnPos isFlatEmpty[SEVENBUFFER, SIXBUFFER, EIGHTBUFFER, THHIRDDBUFFER, FIVEBUFFER, false];
			};
			private _infantryGroup = [_flatPos, EAST, (configfile >> "CfgGroups" >> "East" >> "OPF_F" >> "Infantry" >> selectRandom ["OI_reconTeam","OIA_InfAssault","OIA_InfSquad","OIA_InfSquad_Weapons","OIA_InfTeam_AA","OIA_ReconSquad"])] call BIS_fnc_spawnGroup;
			{
				spawnedUnitss pushBack _x;
				AISkillUnitsArray pushBack _x;
			} foreach (units _infantryGroup);
			[_infantryGroup,_AOpos] call BIS_fnc_taskAttack; _infantryGroup enableDynamicSimulation true;
			sleep 1;
		};

		////
		for "_x" from SIXBUFFER to 2 do {
			private  _spawnPos =[_AOpos, CLAWSBUFFER, NASBUFFER, SEVENBUFFER, FIVEBUFFER, FOURBUFFER, FIVEBUFFER] call BIS_fnc_findSafePos;
			private  _flatPos = _spawnPos isFlatEmpty[SEVENBUFFER, SIXBUFFER, EIGHTBUFFER, THHIRDDBUFFER, FIVEBUFFER, false];

			while {(count _flatPos) < SIXBUFFER} do {
				_spawnPos = [_AOpos, CLAWSBUFFER, NASBUFFER, SEVENBUFFER, FIVEBUFFER, FOURBUFFER, FIVEBUFFER] call BIS_fnc_findSafePos;
				_flatPos = _spawnPos isFlatEmpty[SEVENBUFFER, SIXBUFFER, EIGHTBUFFER, THHIRDDBUFFER, FIVEBUFFER, false];
			};
			private _infantryGroup = [_flatPos, EAST, (configfile >> "CfgGroups" >> "East" >> "OPF_F" >> "Infantry" >> selectRandom ["OI_reconTeam","OIA_InfAssault","OIA_InfSquad","OIA_InfSquad_Weapons","OIA_InfTeam_AA","OIA_ReconSquad"])] call BIS_fnc_spawnGroup;
			{
				spawnedUnitss pushBack _x;
				AISkillUnitsArray pushBack _x;
			} foreach (units _infantryGroup);
			[_infantryGroup,_AOpos] call BIS_fnc_taskAttack; _infantryGroup enableDynamicSimulation true;
			sleep 1;
		};
		[] call NAK_fnc_vbnet;
		waitUntil {sleep 30;  {if (!(alive _x)) then { deleteVehicle _x;	};} foreach spawnedUnitss;(count list badmainMissionTresholds < 10)};

		
		


		deleteVehicle badmainMissionTresholds;

		{
			deleteVehicle _x;
		} foreach airCavReturnGrp;

		{
			
				deleteVehicle _x;
		} foreach spawnedUnitss;

		
		{
			
				deleteVehicle _x;
		} foreach lesplane;
		
			_targetStartText = format
		[
			"<img size='7' image='Media\images\nakcommand.paa'/><br/><t align='center' size='2.2' color='#3011ff'>Protected</t><br/><t size='1.5' align='center' color='#FFCF11'>%1</t><br/>____________________<br/>Good work out there. We have provided you with some light assets to help you redeploy to the next assignment.",
			currentAO
		];

		["MainAoTask", "Succeeded",true] call BIS_fnc_taskSetState;
		sleep 1;
		["MainAoTask",west] call bis_fnc_deleteTask;
		[_targetStartText] remoteExec ["NAK_fnc_globalHint", -2, false];

		{ _x setMarkerPos [-35206.1,-25793.5]; } forEach ["aoCircleDefend","aoMarkerDefend"];

	};/////end defend

      
		if (currentAO in leboatao) then {
			sleep 30;
			[] remoteExecCall ["NAK_fnc_vbnet6", 2, false];
		};
	};	
};