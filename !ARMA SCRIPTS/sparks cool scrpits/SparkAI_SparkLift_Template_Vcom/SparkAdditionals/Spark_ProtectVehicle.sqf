// Null = [ V1, V2, V3, V4, V5, V6 ] execVM "SparkAdditionals\Spark_ProtectVehicle.sqf";
Private _Vehicles = _this;
Private _Fnc_Protection = {

	Params [ "_Vehicle" ];
	
	_Vehicle addEventHandler [ "HandleDamage", {
	
		Params [ "_Vehicle", "_Selection", "_Damage" ];
		Private _Debug = false;
		Private _Array = [];
		
		switch ( typeOf _Vehicle ) do {
			case "rhsusf_m1a2sep1tuskiiwd_usarmy": 		{ _Array = [ "duke1","duke2","e1","e2","e3","e4","e5","e6","e7","e8","e9","e10","e11","e12","e13","e14","e15","e16","e17","e18","e19","e20","e21","e22","e23","e24","e25","e26","e27","e28","e29","e30","e31","e32","e33","e34","e35","e36","e37","e38","e39","e40","e41","e42","e43","e44","e45","e46","hit_trackl","hit_trackr","vez","zbran","hit_engine","" ];};
			case "rhsusf_m1a2sep1tuskiid_usarmy":  		{ _Array = [ "duke1","duke2","e1","e2","e3","e4","e5","e6","e7","e8","e9","e10","e11","e12","e13","e14","e15","e16","e17","e18","e19","e20","e21","e22","e23","e24","e25","e26","e27","e28","e29","e30","e31","e32","e33","e34","e35","e36","e37","e38","e39","e40","e41","e42","e43","e44","e45","e46","hit_trackl","hit_trackr","vez","zbran","hit_engine","" ];};
			case "RHS_M6":						   		{ _Array = [ "hit_trackl","hit_trackr","vez","zbran","" ] };
			case "RHS_M6_wd":					   		{ _Array = [ "hit_trackl","hit_trackr","vez","zbran","" ] };
			case "TMTM_C_LT_01_racing_F": 		   		{ _Array = [ "hit_fuel_point","hit_engine_point","hit_trackl_point","hit_trackr_point","cage_left_1_point","cage_left_2_point","cage_left_3_point","cage_right_1_point","cage_right_2_point","cage_right_3_point","cage_back_point","cage_front_point" ]};
			case "TMTM_C_LT_01_civ_F": 		   	   		{ _Array = [ "hit_fuel_point","hit_engine_point","hit_trackl_point","hit_trackr_point","cage_left_1_point","cage_left_2_point","cage_left_3_point","cage_right_1_point","cage_right_2_point","cage_right_3_point","cage_back_point","cage_front_point" ]};
			case "CUP_B_RG31E_M2_OD_USA": 		  		{ _Array = [ "glass1","glass2","glass3","glass4","glass5","glass6","glass7","glass8","glass10","glass11","glass12","glass13","glass14","glass15","glass16","palivo","wheel_1_1_steering","wheel_1_2_steering","wheel_2_1_steering","wheel_2_2_steering","motor" ]};
			case "CUP_B_RG31_M2_OD_GC_USA": 	   		{ _Array = [ "glass1","glass2","glass3","glass4","glass5","glass6","glass7","glass8","glass10","glass11","glass12","glass13","glass14","glass15","glass16","palivo","wheel_1_1_steering","wheel_1_2_steering","wheel_2_1_steering","wheel_2_2_steering","motor" ]};
			case "CUP_I_LSV_02_unarmed_ION": 	   		{ _Array = [ "wheel_1_1_steering","wheel_1_2_steering","wheel_2_1_steering","wheel_2_2_steering","engine_hitpoint","light_1","light_2" ] };
			case "CUP_C_Ikarus_Chernarus": 		   		{ _Array = [ "glass5","glass6","glass1","glass2","glass3","glass4","wheel_1_1_steering","wheel_1_2_steering","wheel_2_1_steering","wheel_2_2_steering","motor","l svetlo","p svetlo" ]};
			case "CUP_B_Hilux_armored_BMP1_BLU_G_F": 	{ _Array = [ "wheel_1_1_steering","wheel_2_1_steering","glass1","glass2","wheel_1_2_steering","wheel_2_2_steering","motor","vez","zbran" ]};
			case "CUP_B_Hilux_armored_BTR60_BLU_G_F": 	{ _Array = [ "wheel_1_1_steering","wheel_2_1_steering","glass1","glass2","wheel_1_2_steering","wheel_2_2_steering","motor","vez","zbran" ]};
		};
		
		if !( _Selection in _Array ) then { _Damage = 0; };
		if ( _Debug ) then { hint format [ "%1, %2, %3", _Vehicle, _Selection, _Damage ];};
		
		_Damage
	
	}];
};

{[ _x ] spawn _Fnc_Protection; } forEach _Vehicles;