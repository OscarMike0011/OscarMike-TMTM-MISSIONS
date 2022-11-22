// Adds a hold action to the desired object. Once executed the object will be deleted and spectrum scripts reset.
// Null = [ VarName, "Title", "Message after completion", 10 ] execVM "SparkAdditionals\Spark_Spectrum_HoldAction.sqf";
Private _Object = _this select 0;
Private _Title = _this select 1;
Private _Text = _this select 2;
Private _Delay = _this select 3;
[
	_Object,
	_Title,
	"\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_search_ca.paa",
	"\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_search_ca.paa",
	"_this distance _target < 3",
	"_caller distance _target < 3",
	{},
	{},
	{ 
		deleteVehicle ( _this select 0 );
		hint ((_this select 3 ) select 0 );
	},
	{},
	[ _Text ],
	_Delay,
	99,
	true,
	false
] remoteExec [ "BIS_fnc_holdActionAdd", 0, _Object ]; // Set object variable name here as well.