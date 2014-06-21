if (!(_this select 0)) exitWith {};

player setVariable ["ACE_SYS_STAMINA_MULTI", 0.0001];
while {!ACE_SYS_STAMINA} do {
   ACE_SYS_STAMINA = false;
   publicVariable "ACE_SYS_STAMINA";
};