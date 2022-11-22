Params [ "_Array_Numer", "_Mode", "_Type", "_Amount", "_Center", "_Radius" ];
Private [ "_Array", "_IsStatic", "_Safety" ];
	
switch ( _Type ) do {
	case 0: { _Array = [ _Array_Numer, 1 ] call Vuk_Fnc_Spawn_SelectArray; };
	case 1: { _Array = [ _Array_Numer, 2 ] call Vuk_Fnc_Spawn_SelectArray; };
	case 2: { _Array = [ _Array_Numer, 3 ] call Vuk_Fnc_Spawn_SelectArray; };
	case 3: { _Array = [ _Array_Numer, 4 ] call Vuk_Fnc_Spawn_SelectArray; };
	case 4: { _Array = [ _Array_Numer, 5 ] call Vuk_Fnc_Spawn_SelectArray; };
	case 5: { _Array = [ _Array_Numer, 6 ] call Vuk_Fnc_Spawn_SelectArray; };
	case 6: { _Array = [ _Array_Numer, 7 ] call Vuk_Fnc_Spawn_SelectArray; };
	case 7: { _Array = [ _Array_Numer, 8 ] call Vuk_Fnc_Spawn_SelectArray; };
	case 8: { _Array = [ _Array_Numer, 9 ] call Vuk_Fnc_Spawn_SelectArray; };
	case 9: { _Array = [ _Array_Numer, 10 ] call Vuk_Fnc_Spawn_SelectArray; };
};

_IsStatic = false;
_Safety = 0.75;

if (( count _this ) > 6 ) then { _IsStatic = _this select 6; };

if ( _Type != 3 ) then {

	for "_x" from 1 to _Amount do {
	
		Private [ "_Vehicle", "_Position", "_Group", "_Vehicle_Type" ];
		
		_Position = [ 0, 0, 0 ];
		_Vehicle_Type = selectRandom _Array;
		
		_Position = [ _Center, _Radius, _Vehicle_Type, _Mode ] call Vuk_Fnc_Spawn_FindPos;
		
		if ((( _Position select 0 ) == 0 ) AND (( _Position select 1 ) == 0 ) AND (( _Position select 2 ) == 0 )) exitWith { hint "SERVER DEBUG: No suitable vehicle position found. Spawn less vehicles or increase the spawn radius."; };
	
		_Vehicle = createVehicle [ _Vehicle_Type, _Position, [], 10, "NONE" ];
		
		_Group = createVehicleCrew _Vehicle; 
			
		if ( _Mode == 1 ) then {
		
			if ( !_IsStatic ) then {
		
				[ _Group, _Center, ( _Radius * 1.5 )] call BIS_fnc_taskPatrol;
				
			};
				
		} else {
			
			[ _Group, _Radius ] call BIS_fnc_taskAttack;
			
		};

		sleep _Safety;
	
	};
		
} else {
	
	for "_x" from 1 to _Amount do {
		
		Private [ "_Vehicle", "_Position", "_Group", "_Vehicle_Type", "_R" ];
			
		_Vehicle_Type = selectRandom _Array;
		_R = 10 + ( floor random 50 );
		_Position = [( _Center select 0) + _R, ( _Center select 1) + _R, ( _Center select 2 )];
		_Vehicle = createVehicle [ _Vehicle_Type, _Position, [], 10, "FLY" ];
		_Group = createVehicleCrew _Vehicle;
			
		if ( _Mode == 1 ) then {
			
			[ _Group, _Center, ( _Radius * 1.5 )] call BIS_fnc_taskPatrol;
				
		} else {
			
			[ _Group, _Radius ] call BIS_fnc_taskAttack;
			
		};
	};
};