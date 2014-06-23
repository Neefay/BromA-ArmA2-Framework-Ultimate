//==============================================================================
/*
Don't edit the header and the footer, only the middle part.

To call this action just add this on init.sqf or wherever you want:

[ "player", [ace_sys_interaction_key_self], -100, ["repair\repairVehicle_interact.sqf", "main"] ] call CBA_ui_fnc_add;

And by the way, you can add any vehicle where the "player" thing is, for more info
see http://community.bistudio.com/wiki/ArmA_2:_CfgVehicles

*///==============================================================================

private ["_menuDef", "_target", "_params", "_menuName", "_menuRsc", "_menus"];

_target = _this select 0;
_params = _this select 1;

_menuName = "";
_menuRsc = "popup";

if (typeName _params == typeName []) then {
	if (count _params < 1) exitWith {diag_log format["Error: Invalid params: %1, %2", _this, __FILE__];};
	_menuName = _params select 0;
	_menuRsc = if (count _params > 1) then {_params select 1} else {_menuRsc};
} else {
	_menuName = _params;
};

//==============================================================================
// You can start editing below here v v v
//==============================================================================

_visible = true;

_menus = [
	[
		["main", "Main Menu", _menuRsc],
		[
			["<t color='#518851'>Repair vehicle ></t>", "", "", "",
				[OPTIONAL_PATH+"repair\repairVehicle_interact.sqf", "confirmmenu", 1],
				-1, 1,(
                                
                        // Check if the damage isn't too low or too high or if the thing can move
                        (getDammage cba_ui_target >= 0.01 && getDammage cba_ui_target <= 0.85 && !(cba_ui_target IskindOf "Man") && (vehicle player == player)) || !(cba_ui_target getVariable ["ace_canmove", true]) || !(cba_ui_target getVariable ["ace_canshoot", true])
                      )]	
		]
	]
];

if(_menuName == "confirmmenu") then {
	
	_menus set [count _menus,
		[
			["confirmmenu", "Confirm", "popup", ""],
			[
				[
				"OK",
					{ 
                                            callRepair = [cba_ui_target,player] execVM OPTIONAL_PATH+"repair\repair.sqf";
                                        },
					"", "", "", -1, 1,
					(_visible), (true)
				],
				[
				"Cancel",
					{},
					"", "", "", -1, 1,
					(_visible), (true)
				]
			]
		]
	];
};

//==============================================================================
// Stop editing from here on.
//==============================================================================

_menuDef = [];
{
	if (_x select 0 select 0 == _menuName) exitWith {_menuDef = _x};
} forEach _menus;

if (count _menuDef == 0) then {
	hintC format ["Error: Menu not found: %1\n%2\n%3", str _menuName, if (_menuName == "") then {_this}else{""}, __FILE__];
	diag_log format ["Error: Menu not found: %1, %2, %3", str _menuName, _this, __FILE__];
};

_menuDef // return value