	
	private ["_heliporteur","_myRope1", "_myRope2", "_myRope3", "_myRope4", "_objet"];
	_heliporteur = _this select 0;
	_objet = (_this select 3) select 0;

	//_length = ropeLength _myRope1;
	_heliporteur allowdamage false;

	if  (typeOf _objet == "Land_Pod_Heli_Transport_04_covered_F") then {
/*	ropeUnwind [  _myRope1 , 2, -(_length ), true];
	ropeUnwind [  _myRope2 , 2, -(_length ), true];
	ropeUnwind [  _myRope3 , 2, -(_length ), true];
	ropeUnwind [  _myRope4 , 2, -(_length ), true];
	waitUntil {_length = ropeLength _myRope1; _length < 2;};*/
	_objet disableCollisionWith _heliporteur; 
	_objet attachTo [_heliporteur, [0,-1,-0.82]];};

	if  (typeOf _objet == "Land_Pod_Heli_Transport_04_ammo_F") then {
/*	ropeUnwind [  _myRope1 , 2, -(_length ), true];
	ropeUnwind [  _myRope2 , 2, -(_length ), true];
	ropeUnwind [  _myRope3 , 2, -(_length ), true];
	ropeUnwind [  _myRope4 , 2, -(_length ), true];
	waitUntil {_length = ropeLength _myRope1; _length < 2;};*/
	_objet disableCollisionWith _heliporteur; 
	_objet attachTo [_heliporteur, [-0.1,-1.08,-1.07]];};

	if  (typeOf _objet == "Land_Pod_Heli_Transport_04_bench_F") then {
/*	ropeUnwind [  _myRope1 , 2, -(_length ), true];
	ropeUnwind [  _myRope2 , 2, -(_length ), true];
	ropeUnwind [  _myRope3 , 2, -(_length ), true];
	ropeUnwind [  _myRope4 , 2, -(_length ), true];
	waitUntil {_length = ropeLength _myRope1; _length < 2;};*/
	_objet disableCollisionWith _heliporteur; 
	_objet attachTo [_heliporteur, [0,0,-1.2]];};

	tarup1 = ["Land_Pod_Heli_Transport_04_covered_F","Land_Pod_Heli_Transport_04_ammo_F"];
	tarup2 = ["Land_Pod_Heli_Transport_04_bench_F"];
	_point1 = []; _point2 = []; _point3= []; _point4 = [];


/*	if  (typeOf _objet in tarup1) then {
	_point1 = [-0.942,2.944,0.77]; 
	_point2 = [0.969,3.014,0.784]; 
	_point3 = [0.89,-0.597,0.786]; 
	_point4 = [-0.912,-0.55,0.812];
	};

	if  (typeOf _objet in tarup2) then {
	_point1 = [-0.956,1.944,1.171]; 
	_point2 = [0.746,1.894,1.128]; 
	_point3 = [0.732,-1.684,1.188]; 
	_point4 = [-0.946,-1.703,1.143];
	};
	

	[_objet, _point1, [0,0,-1]] ropeAttachTo _myRope1;
	[_objet, _point2, [0,0,-1]] ropeAttachTo _myRope2;
	[_objet, _point3, [0,0,-1]] ropeAttachTo _myRope3;
	[_objet, _point4, [0,0,-1]] ropeAttachTo _myRope4;
*/
	sleep 2;
	_heliporteur allowdamage true;
	/*
	_myRope1 = ropeCreate [_heliporteur, "slingload0", _objet, _point1, 15];
	_myRope2 = ropeCreate [_heliporteur, "slingload0", _objet, _point2, 15];
	_myRope3 = ropeCreate [_heliporteur, "slingload0", _objet, _point3, 15];
	_myRope4 = ropeCreate [_heliporteur, "slingload0", _objet, _point4, 15];*/




