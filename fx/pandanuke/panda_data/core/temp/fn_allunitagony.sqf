   

   _count_units = count AllUnits;
    for [{_c = 0}, {_c <= _count_units}, {_c = _c + 1}] do 
    {
		_selected_units = AllUnits select _c;
		if (!(_selected_units hasWeapon ns_blow_itemapsi) && (Alive _selected_units)) then
		{
			if ((vehicle _selected_units) == _selected_units) then 
			{
				_selected_units switchMove "AcinPercMrunSnonWnonDf_agony";
			};
		};
	};