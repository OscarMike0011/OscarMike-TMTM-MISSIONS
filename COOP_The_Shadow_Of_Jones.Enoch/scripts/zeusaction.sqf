call {
    if (!("blood" call BIS_fnc_taskCompleted) && ("blood" call BIS_fnc_taskExists)) exitWith
    {
        ["blood", "SUCCEEDED"] call BIS_fnc_taskSetState;
        [
        [true,"zeus_1","zeus_2", "zeus_3"],
        ["meat","rit"],
        ["Follow the steps", "Give Meat to the head", "marker"],
        [ObjNull] ,
        "CREATED",
        10,
        true,
        "attack",
        true
        ] call BIS_fnc_taskCreate;
    };

    if (!("meat" call BIS_fnc_taskCompleted) && ("meat" call BIS_fnc_taskExists))  exitWith
    {
        ["meat", "SUCCEEDED"] call BIS_fnc_taskSetState;
        [
        [true,"zeus_1","zeus_2", "zeus_3"],
        ["dance","rit"],
        ["Follow the steps", "Now do a little dance around the head", "marker"],
        [ObjNull],
        "CREATED",
        10,
        true,
        "attack",
        true
        ] call BIS_fnc_taskCreate;
    };

    if (!("dance" call BIS_fnc_taskCompleted) && ("dance" call BIS_fnc_taskExists))  exitWith
    {
        ["dance", "SUCCEEDED"] call BIS_fnc_taskSetState;
        ["rit", "SUCCEEDED"] call BIS_fnc_taskSetState;
        [
        [true,"zeus_1","zeus_2", "zeus_3"],
        "run",
        ["just run", "EVAC NOW", "marker"],
        [11635.3,12721.5,0],
        "CREATED",
        10,
        true,
        "run",
        true
        ] call BIS_fnc_taskCreate;
    };
 if (player isKindOf "VirtualCurator_F")then {hint "if conditions not meet";};   
};
