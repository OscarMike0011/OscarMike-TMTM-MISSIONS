Params [ "_Center", "_Radius", "_Vehicle_Type", "_Mode" ];
Private [ "_Size", "_Found", "_Counter", "_Position", "_Margin", "_Safety" ];

_Found = false;
_Size = 0;
_Counter = 0;
_Position  = [ 0, 0, 0 ];
_Margin = 4;
_Safety = 0.5;

if ( _Vehicle_Type == "B_Soldier_F" ) then { 

	_Size = sizeOf _Vehicle_Type;
	
} else {

	_Size = ( sizeOf _Vehicle_Type ) + _Margin;
	
};

while { !_Found AND ( _Counter < 3 )} do {

	if ( _Mode == 1 ) then {

		_Position = [ _Center, ( _Radius * 0.1 ), ( _Radius * 1.25 ), _Size, 0, 0.5, 0, [], _Center ] call BIS_fnc_findSafePos;
		
	} else {
	
		_Position = [ _Center, 1, 150, _Size, 0, 0.5, 0, [], _Center ] call BIS_fnc_findSafePos;
	
	};
	
	if ( typeName _Position == "ARRAY" ) then { _Found = true; } else { _Counter = _Counter + 1; };
	
	sleep _Safety;
};

if ( _Counter >= 3 ) then { _Position = [ 0, 0, 0 ]; };

_Position