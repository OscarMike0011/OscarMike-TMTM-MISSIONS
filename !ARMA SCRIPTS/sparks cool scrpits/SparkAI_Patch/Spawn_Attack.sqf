//			[ 0, 0, "Marker1", "Marker2", 3, [ 4 ], [ 2,1,1,1 ]] spawn Vuk_Fnc_Spawn_Attack;
Params [ "_Array_Numer", "_Faction", "_Marker_A", "_Marker_B", "_Infantry_Size", "_Infantry", "_Vehicles" ];
Private [ "_Side", "_Safety", "_Position_Attack", "_Position_Spawn" ];
	
_Position_Spawn = ( getMarkerPos _Marker_A );
_Position_Attack = ( getMarkerPos _Marker_B );
_Safety = 0.75;
	
switch ( _Faction ) do {
	case 0: { _Side = west; };
	case 1: { _Side = east; };
	case 2: { _Side = independent; };
	case 3: { _Side = civilian; };
};
	
// Infantry
for "_x" from 1 to ( _Infantry select 0 ) do {
	
	Private [ "_Group" ];
		
	_Group = createGroup _Side;
		
	for "_x" from 1 to _Infantry_Size do {
		
		Private [ "_Unit" ];
			
		_Unit = _Group createUnit [( selectRandom ([ _Array_Numer, 0 ] call Vuk_Fnc_Spawn_SelectArray )), _Position_Spawn, [], 20, "NONE" ];
		if (( backpack _Unit ) != "" ) then { removeBackpack _Unit };			
		sleep _Safety;
	
	};
		
	[ _Group, _Position_Attack ] call BIS_fnc_taskAttack;
};
	
if (( _Vehicles select 0 ) > 0 ) then {[ _Array_Numer, 0, 0, ( _Vehicles select 0 ), _Position_Spawn, _Position_Attack ] spawn Vuk_Fnc_Spawn_Vehicle; };
sleep 1.75;
if (( _Vehicles select 1 ) > 0 ) then {[ _Array_Numer, 0, 1, ( _Vehicles select 1 ), _Position_Spawn, _Position_Attack ] spawn Vuk_Fnc_Spawn_Vehicle; };
sleep 1.75;
if (( _Vehicles select 2 ) > 0 ) then {[ _Array_Numer, 0, 2, ( _Vehicles select 2 ), _Position_Spawn, _Position_Attack ] spawn Vuk_Fnc_Spawn_Vehicle; };
sleep 1.75;
if (( _Vehicles select 3 ) > 0 ) then {[ _Array_Numer, 0, 3, ( _Vehicles select 3 ), _Position_Spawn, _Position_Attack ] spawn Vuk_Fnc_Spawn_Vehicle; };