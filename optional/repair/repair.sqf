// We are receiving the argument from the action, meaning:
//==============================================================================

private ["_target","_caller","_crewNumber","_repairDone","_repairFactor","_repairTime","_FailReason","_playerHealth",
		 "_vehicleHealth","_vehicleFuel","_repairTimeCount","_repairPercent","_Progress","_Damage","_Success"];

_target = _this select 0; // the vehicle we're fixing
_caller = _this select 1; // the player doing the fixing
_crewNumber = count(crew _target);
_repairDone = true;
_repairFactor = 1; // This is only in case whatever is being fixed isn't declared here, will be changed later
_repairTime = 60;

cancelRepair = false;
if !(alive _target) exitWith {_FailReason = parseText format["<t color='#EE0738'>Vehicle's Destroyed!</t><br/> You can't repair it.</t>"];hint _FailReason}; 
if (count (crew _target) > 0) then { [-1,{_this vehicleChat "This vehicle is being repaired."},_target] call CBA_fnc_globalExecute;{_x action ["EJECT",_target];sleep 0.001;} forEach (crew _target);}; 

// --> Locks the vehicle so no one gets in the vehicle whilst someone is repairing it.
[-1,{(_this select 0) setVehicleLock "LOCKED";},[_target]] call CBA_fnc_globalExecute;

//==============================================================================

waituntil {!(IsNull (findDisplay 46))};
_EHid = (findDisplay 46) displayAddEventHandler ["KeyDown","
if ((_this select 1 == 1) || (_this select 1 == 30) || (_this select 1 == 31) || (_this select 1 == 32) ||(_this select 1 == 17) ) then {cancelRepair = true;} else {cancelRepair = false;}"]; 

// --> Set a repair time Factor depending on what kind of vehicle _target is.
//==============================================================================

if (_target isKindOf "Ship") then { _repairFactor = 1 };
if (_target isKindOf "Car") then { _repairFactor = 1 };
if (_target isKindOf "Tank") then { _repairFactor = 3 };
if (_target isKindOf "Air") then { _repairFactor = 7 };

// --> Set the repair Time, it will be determined by: the current damage of the vehicle * 100 (convert damage value to higher damage) * Repair factor determined by the type of vehicle (tank,car or air) + standard time.
//==============================================================================

_Damage = [(getDammage _target), 1, 2] call CBA_fnc_formatNumber;
_Damage = parseNumber(_Damage);

// --> Since ACE disables the damage system the default time for tanks will be 60, with the if condition we can set a higher default time)
if (_target isKindOf "Tank") then {	_repairTime = 300} else {_repairTime = (_Damage * 100 * _repairFactor) + 60};

// --> Check if an Engineer unit exits and compares it to _caller if 1, then it will repair twice as fast
//==============================================================================

_isEngineer = getNumber (configFile >> "cfgVehicles" >> typeOf _caller >> "engineer");
if (_isEngineer == 1) then {_repairTime = _repairTime/2;}; 

if ((_isEngineer == 0) && (engineersOnly)) exitWith { hint "You have no idea how to repair this thing." };

//==============================================================================

// --> Executes the animation globaly so all clients can see.
[-1,{_this switchMove "RepairingKneel"},_caller] call CBA_fnc_globalExecute;

// --> Declares the counter and load bar variables for the incoming repairing loop.
_repairTimeCount = 0;

// --> Gets the current damage of the unit repairing and the vehicle being repared into a variable, to be used as a hit detection on the repairing loop.
_playerHealth = getDammage _caller;
_vehicleHealth = getDammage _target;
_vehicleFuel = fuel _target;

// --> Loops until the repair counter equals the repair time.
//==============================================================================
while {_repairTimeCount < _repairTime } do 
{
	// --> Increments the counter.
    _repairTimeCount = _repairTimeCount + 1; 
	
	// --> Displays the hint, showing the expected time and the remaining time.
    _repairPercent = floor(_repairTimeCount)/floor(_repairTime)*100;
	
	_Progress = parseText format["<t color='#FFCC00'>Repairing...</t><br/><t size='1'>Remaining: %1/%2s [%3%4]</t>",floor(_repairTimeCount),floor(_repairTime),floor(_repairPercent),"%"];
	hintsilent _Progress;
	
	// --> Checks if the unit repairing has ended its repairing animation, and makes it loop until the loop ends.
    if(animationstate _caller != "RepairingKneel") then { [-1,{_this switchMove "RepairingKneel"},_caller] call CBA_fnc_globalExecute};
	
	// --> Check if the unit repairing or the vehicle being repaired is hit, and exits the script if true.
    if ( (_playerHealth != getDammage _caller) || (_vehicleHealth != getDammage _target) ) exitWith { hint ""; _repairDone = false; };
    
    if (cancelRepair) exitWith {cancelRepair = false; _repairDone = false; };
	sleep 1;
};
// --> Checks if the repairing finished successfully 
//==============================================================================
_Damage = [(getDammage _target), 1, 2] call CBA_fnc_formatNumber;
_Damage = parseNumber(_Damage);

// --> If repair was successful it will set damage back to 0 and display hint.
if (_repairDone) then
{
    _target setDamage 0;
	_Success = parseText format["<t color='#329904'>Repairing Complete!</t><br/>Repaired in %1s</t>",floor(_repairTime)];
    hint _Success;
	if(_vehicleFuel < 0.2) then {_target setFuel 0.3} else {_target setFuel _vehicleFuel};
} 
// --> If repair was unsuccessful it will calculate the amount damage the player managed to repair.
//==============================================================================
else 
{
	_FailReason = parseText format["<t color='#EE0738'>Repair Cancelled!</t></t>"];
	hint _FailReason;
	//hint format ["Repaired: %1\nRepaired Percent: %2%3\nDamage: %4\nHalf Damage: %5\nDamage Repaired: %6",_repairedFail,_repairedFail*100,"%",_Damage,_Damage/2,_DamageRepaired];
};
// --> Stop the animation & unlocks the vehicle.
//==============================================================================
[-1,{
(_this select 0) switchMove "aidlpknlmstpslowwrfldnon_idlesteady02";
(_this select 1) setVehiclelock "UNLOCKED";
},[_caller,_target]] call CBA_fnc_globalExecute;
//==============================================================================