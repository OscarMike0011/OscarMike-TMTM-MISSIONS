		private ["_heliporteur","_myRope1", "_myRope2", "_myRope3", "_myRope4","_objet"];
		
	_heliporteur = _this select 0;
	_myRope1 = _this select 3 select 0;
	_myRope2 = (_this select 3) select 1;
	_myRope3 = (_this select 3) select 2;
	_myRope4 = (_this select 3) select 3;
	_objet = (_this select 3) select 4;
	_heliporteur allowDamage false;
	ropeUnwind [  _myRope1 , 2, 10, true];
	ropeUnwind [  _myRope2 , 2, 10, true];
	ropeUnwind [  _myRope3 , 2, 10, true];
	ropeUnwind [  _myRope4 , 2, 10, true];
	//waitUntil {_length = ropeLength _myRope1; _length > 3;};
		
		detach _objet; 


		sleep 3;

	_heliporteur allowdamage true;



		
		
	

	



