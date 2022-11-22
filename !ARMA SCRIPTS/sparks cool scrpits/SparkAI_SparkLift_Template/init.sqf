Private _Handle = execVM "initCustom.sqf";
Private _A = []; // These objects can tow.
Private _B = []; // These objects can be towed.
Private _C = []; // These objects can lift.
Private _D = []; // These objects can be lifted.
Private _E = []; // These objects can transport cargo.
Private _F = []; // These objects can be transported as cargo.
Private _G = []; // These objects can be moved by the player.
[ _A, _B, _C, _D, _E, _F, _G ]execVM "R3F_LOG\init.sqf";