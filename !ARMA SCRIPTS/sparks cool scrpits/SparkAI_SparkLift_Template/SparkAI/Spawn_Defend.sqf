// [ 0, 0, "Marker1", 350, [ 3,3,3 ] , [ 2,4,2 ], [ 2,1,1,1 ], false ] spawn Vuk_Fnc_Spawn_Defend;
Params [ "_Array_Numer", "_Faction", "_Marker", "_Radius", "_Infantry_Size", "_Infantry", "_Vehicles", "_IsStatic" ];
Private [ "_Side", "_Safety", "_Center" ];
	
_Center = getMarkerPos _Marker;
_Safety = 0.75;
	
switch ( _Faction ) do {
	case 0: { _Side = west; };
	case 1: { _Side = east; };
	case 2: { _Side = independent; };
	case 3: { _Side = civilian; };
};
	
// Spawn Static
for "_x" from 1 to ( _Infantry select 0 ) do {
	
	Private [ "_Group", "_Position" ];
		
	_Group = createGroup _Side;
	_Position = [ _Center, _Radius, "B_Soldier_F", 1 ] call Vuk_Fnc_Spawn_FindPos;
		
	for "_x" from 1 to ( _Infantry_Size select 0 ) do {
		
		Private [ "_Unit" ];
			
		_Unit = _Group createUnit [( selectRandom ([ _Array_Numer, 0 ] call Vuk_Fnc_Spawn_SelectArray )), _Position, [], 1, "NONE" ];
			
		sleep _Safety;
	
	};
		
	[ _Group, _Position ] call BIS_fnc_taskDefend;
};
	
// Spawn Patrol
for "_x" from 1 to ( _Infantry select 1 ) do {
	
	Private [ "_Group" ];
		
	_Group = createGroup _Side;
	_Number = (( _Radius * 0.5 ) + ( floor random _Radius ));
		
	for "_x" from 1 to ( _Infantry_Size select 1 ) do {
		
		Private [ "_Unit" ];
			
		_Unit = _Group createUnit [( selectRandom ([ _Array_Numer, 0 ] call Vuk_Fnc_Spawn_SelectArray )), _Center, [], 1, "NONE" ];
			
		sleep _Safety;
	
	};
		
	[ _Group, _Center, _Number ] call BIS_fnc_taskPatrol;
};
	
// Spawn House
for "_x" from 1 to ( _Infantry select 2 ) do {

	Private [ "_Group", "_AllPositions" ];	
		
	_Group = createGroup _Side;	
	_AllPositions = [( _Infantry_Size select 2 ), _Center, _Radius ] call Vuk_Fnc_Spawn_BuildingPositions;
	
	for "_x" from 1 to ( _Infantry_Size select 2 ) do {
		
		Private [ "_Unit", "_Position" ];
			
		_Position = selectRandom _AllPositions;
		_AllPositions = _AllPositions - _Position;
		_Unit = _Group createUnit [( selectRandom ([ _Array_Numer, 0 ] call Vuk_Fnc_Spawn_SelectArray )), _Position, [], 1, "NONE" ];
		_Unit disableAI "PATH";
			
		sleep _Safety;
	
	};
};
	
if (( _Vehicles select 0 ) > 0 ) then {[ _Array_Numer, 1, 0, ( _Vehicles select 0 ), _Center, _Radius, _IsStatic ] spawn Vuk_Fnc_Spawn_Vehicle; };
sleep 1.75;
if (( _Vehicles select 1 ) > 0 ) then {[ _Array_Numer, 1, 1, ( _Vehicles select 1 ), _Center, _Radius, _IsStatic ] spawn Vuk_Fnc_Spawn_Vehicle; };
sleep 1.75;
if (( _Vehicles select 2 ) > 0 ) then {[ _Array_Numer, 1, 2, ( _Vehicles select 2 ), _Center, _Radius, _IsStatic ] spawn Vuk_Fnc_Spawn_Vehicle; };
sleep 1.75;
if (( _Vehicles select 3 ) > 0 ) then {[ _Array_Numer, 1, 3, ( _Vehicles select 3 ), _Center, _Radius, _IsStatic ] spawn Vuk_Fnc_Spawn_Vehicle; };