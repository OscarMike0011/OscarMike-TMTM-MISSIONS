Params [ "_Selection_Main", "_Selection_Side" ];

Private _Master = [
	
	[
		[ "B_Soldier_F", "B_Soldier_F" ], 									// 0 - Infantry
		[ "B_MRAP_01_F", "B_MRAP_01_F" ],									// 0 - Light vehicles
		[ "B_APC_Wheeled_01_Cannon_F", "B_APC_Wheeled_01_Cannon_F" ],		// 0 - Medium vehicles
		[ "B_MBT_01_Cannon_F", "B_MBT_01_Cannon_F" ],						// 0 - Heavy vehicles
		[ "B_Heli_Attack_01_dynamicLoadout_F" ]								// 0 - Air vehicles
	],
		
	[
		[ ], 						// 1 - Infantry
		[ ],						// 1 - Light vehicles
		[ ],						// 1 - Medium vehicles
		[ ],						// 1 - Heavy vehicles
		[ ]							// 1 - Air vehicles		
	],
		
	[
		[ ], 						// 2 - Infantry
		[ ],						// 2 - Light vehicles
		[ ],						// 2 - Medium vehicles
		[ ],						// 2 - Heavy vehicles
		[ ]							// 2 - Air vehicles		
	],
		
	[
		[ ], 						// 3 - Infantry
		[ ],						// 3 - Light vehicles
		[ ],						// 3 - Medium vehicles
		[ ],						// 3 - Heavy vehicles
		[ ]							// 3 - Air vehicles		
	],
		
	[
		[ ], 						// 4 - Infantry
		[ ],						// 4 - Light vehicles
		[ ],						// 4 - Medium vehicles
		[ ],						// 4 - Heavy vehicles
		[ ]							// 4 - Air vehicles		
	],
		
	[
		[ ], 						// 5 - Infantry
		[ ],						// 5 - Light vehicles
		[ ],						// 5 - Medium vehicles
		[ ],						// 5 - Heavy vehicles
		[ ]							// 5 - Air vehicles		
	],
		
	[
		[ ], 						// 6 - Infantry
		[ ],						// 6 - Light vehicles
		[ ],						// 6 - Medium vehicles
		[ ],						// 6 - Heavy vehicles
		[ ]							// 6 - Air vehicles		
	],
		
	[
		[ ], 						// 7 - Infantry
		[ ],						// 7 - Light vehicles
		[ ],						// 7 - Medium vehicles
		[ ],						// 7 - Heavy vehicles
		[ ]							// 7 - Air vehicles		
	],
		
	[
		[ ], 						// 8 - Infantry
		[ ],						// 8 - Light vehicles
		[ ],						// 8 - Medium vehicles
		[ ],						// 8 - Heavy vehicles
		[ ]							// 8 - Air vehicles		
	],
	
	[
		[ ], 						// 9 - Infantry
		[ ],						// 9 - Light vehicles
		[ ],						// 9 - Medium vehicles
		[ ],						// 9 - Heavy vehicles
		[ ]							// 9 - Air vehicles		
	]
];
	
_Array = (( _Master select _Selection_Main ) select _Selection_Side );
	
_Array