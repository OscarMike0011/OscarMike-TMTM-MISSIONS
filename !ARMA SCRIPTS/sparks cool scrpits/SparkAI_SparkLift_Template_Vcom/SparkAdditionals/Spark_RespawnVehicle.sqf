// Null = [ this, 10, 20 ] execVM "SparkAdditionals\Spark_RespawnVehicle.sqf";
if ( isServer ) then {
	[( _this select 0 ), ( _this select 1 ), ( _this select 2 )] spawn {
		Private _Object = _this select 0;
		Private _Delay = _this select 1;
		Private _Delay_Wreck = _this select 2;
		Private _Gear = [( getWeaponCargo _Object ), ( getMagazineCargo _Object ), ( getItemCargo _Object ), ( getBackpackCargo _Object )];
		Private _Object_Type = typeOf _Object;
		Private _Pos = getPosATL _Object;
		Private _Dir = getDir _Object;
		Private _Texture_Source = [ _Object ] call BIS_fnc_getVehicleCustomization;
		Private _Texture = "NONE";
		if (( count ( _Texture_Source select 0 )) > 0 ) then { _Texture = ( _Texture_Source select 0 ) select 0 };
		Private _Pylons = [];
		if ( _Object isKindOf "Air" ) then { _Pylons = getPylonMagazines _Object };
		waitUntil { uiSleep 3; !( alive _Object )};
		[ _Object, _Delay_Wreck ] spawn { uiSleep ( _this select 1 ); deleteVehicle ( _this select 0 ); };
		uiSleep _Delay;
		Private _Object_New = _Object_Type createVehicle [ 0,0,9999 ];
		_Object_New setPosATL _Pos;
		_Object_New setDir _Dir;
		if ( _Texture != "NONE" ) then {
			Private _Flag = [ _Object_New, [ _Texture, 1 ]] call BIS_fnc_initVehicle;
			if ( !_Flag ) then { "SPARK VEHICLE RESPAWN: This vehicle is not supported, cannot write texture." remoteExec [ "hitn", 0 ]};
		};
		clearWeaponCargoGlobal _Object_New;
		{
			Private _Index = (( _Gear select 0 ) select 0 ) find _x;
			_Object_New addWeaponCargoGlobal [ _x, ((( _Gear select 0 ) select 1 ) select _Index )];
		} forEach (( _Gear select 0 ) select 0 );
		clearMagazineCargoGlobal _Object_New;
		{
			Private _Index = (( _Gear select 1 ) select 0 ) find _x;
			_Object_New addMagazineCargoGlobal [ _x, ((( _Gear select 1 ) select 1 ) select _Index )];
		} forEach (( _Gear select 1 ) select 0 );
		clearItemCargoGlobal _Object_New;
		{
			Private _Index = (( _Gear select 2 ) select 0 ) find _x;
			_Object_New addItemCargoGlobal [ _x, ((( _Gear select 2 ) select 1 ) select _Index )];
		} forEach (( _Gear select 2 ) select 0 );
		clearBackpackCargoGlobal _Object_New;
		{
			Private _Index = (( _Gear select 3 ) select 0 ) find _x;
			_Object_New addBackpackCargoGlobal [ _x, ((( _Gear select 3 ) select 1 ) select _Index )];
		} forEach (( _Gear select 3 ) select 0 );
		if ( _Object_New isKindOf "Air" ) then {
			Private _PylonConfig = configProperties [ configFile >> "CfgVehicles" >> typeOf _Object_New >> "Components" >> "TransportPylonsComponent" >> "Pylons", "isClass _x" ] apply { getArray ( _x >> "turret" )}; 
			{ _Object_New removeWeaponGlobal getText ( configFile >> "CfgMagazines" >> _x >> "pylonWeapon" )} forEach getPylonMagazines _Object_New;
			{ _Object_New setPylonLoadout [ _forEachIndex + 1, _x, true, _PylonConfig select _forEachIndex ]} forEach _Pylons;
		};
		[ _Object_New, _Delay, _Delay_Wreck ] execVM "SparkAdditionals\Spark_RespawnVehicle.sqf";
	};
};