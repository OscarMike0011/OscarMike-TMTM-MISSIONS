Params [ "_Infantry_Size", "_Center", "_Radius" ];
Private [ "_Loop", "_Buildings", "_Array" ];
	
_Buildings = _Center nearObjects [ "House", _Radius ];
_Loop = true;
_Array = [];
	
while { _Loop } do {
	
	Private [ "_Building", "_AllPositions" ];
	
	_Building = selectRandom _Buildings;
		
	_Buildings = _Buildings - [ _Building ];

	_AllPositions = _Building buildingPos -1;
		
	if ( count _AllPositions >= _Infantry_Size ) then { _Array = _AllPositions; _Loop = false; };
};
	
_Array