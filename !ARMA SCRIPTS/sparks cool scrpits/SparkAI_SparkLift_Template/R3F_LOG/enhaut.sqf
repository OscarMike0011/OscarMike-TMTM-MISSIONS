	private ["_heliporteur","_myRope1", "_myRope2", "_myRope3", "_myRope4"];
	_heliporteur = _this select 0;
	_myRope1 = _this select 3 select 0;
	_myRope2 = (_this select 3) select 1;
	_myRope3 = (_this select 3) select 2;
	_myRope4 = (_this select 3) select 3;
	_tooLow = format ["<br/><t align='center'><t size='2.2' color='#ed3b00'>Vehicle To Close</t><br/><t size='1.2' color='#9ef680'>You need to Increase the length of the </t><br/><t size='1.5' color='#ed3b00'>Ropes</t><br/><t size='1.2' color='#9ef680'>Join Us at ts3.naksquad.net or www.naksquad.net For more Info.</t></t>"];
	_length = ropeLength _myRope1;
	if (_length > 10) then {
	ropeUnwind [  _myRope1 , 2, -5, true];
	ropeUnwind [  _myRope2 , 2, -5, true];
	ropeUnwind [  _myRope3 , 2, -5, true];
	ropeUnwind [  _myRope4 , 2, -5, true];} 
	else {
		hint parseText _tooLow;
	};

