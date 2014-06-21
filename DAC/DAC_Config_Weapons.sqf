//////////////////////////////
//    Dynamic-AI-Creator    //
//    Version 3.0 - 2010    //
//--------------------------//
//    DAC_Config_Weapons    //
//--------------------------//
//    Script by Silola      //
//    silola@freenet.de     //
//////////////////////////////

private ["_TypNumber","_TempArray","_Weapon_Pool","_Magazine_Pool"];

_TypNumber = _this select 0;_TempArray = [];

switch (_TypNumber) do
{
//-------------------------------------------------------------------------------------------------
//Russian Gear
  case 1:
  {
    _Weapon_Pool  = ["ACE_AK74M_GL","Binocular","ItemCompass","ItemMap"];
    _Magazine_Pool  = [["30Rnd_545x39_AK",6],["1Rnd_HE_GP25",5],["HandGrenade_East",2]];
  };
//-------------------------------------------------------------------------------------------------
  case 2:
  {
    _Weapon_Pool  = ["ACE_AK74M","RPG7V","ItemCompass","ItemMap"];
    _Magazine_Pool  = [["30Rnd_545x39_AK",6],["PG7VL",2]];
  };
//-------------------------------------------------------------------------------------------------
  case 3:
  {
	_Weapon_Pool  = ["ACE_AK74M","ItemCompass","ItemMap"];
    _Magazine_Pool  = [["30Rnd_545x39_AK",8],["HandGrenade_East",2]];

  };
//-------------------------------------------------------------------------------------------------
  case 4:
  {
    _Weapon_Pool  = ["ACE_RPK74M","ItemCompass","ItemMap"];
    _Magazine_Pool  = [["ACE_75Rnd_545x39_T_RPK",8],["HandGrenade_East",2]];
  };
//-------------------------------------------------------------------------------------------------
  case 5:
  {
    _Weapon_Pool  = ["PK","ItemCompass","ItemMap"];
	_Magazine_Pool  = [["100Rnd_762x54_PK",3]];
  };
//-------------------------------------------------------------------------------------------------
  case 6:
  {
    _Weapon_Pool  = ["AKS_74_U","ItemCompass","ItemMap"];
    _Magazine_Pool  = [["30Rnd_545x39_AK",8]];
  };
//-------------------------------------------------------------------------------------------------
// USMC/US Army Gear
//-------------------------------------------------------------------------------------------------
  case 7:
  {
    _Weapon_Pool  = ["ACE_M4A1_GL","Binocular","ItemCompass","ItemMap"];
    _Magazine_Pool  = [["30Rnd_556x45_Stanag",6],["1Rnd_HE_M203",5],["HandGrenade_West",2]];
  };
//-------------------------------------------------------------------------------------------------
  case 8:
  {
    _Weapon_Pool  = ["M4A1","M136","ItemCompass","ItemMap"];
    _Magazine_Pool  = [["30Rnd_556x45_Stanag",6]];
  };
//-------------------------------------------------------------------------------------------------
  case 9:
  {
	_Weapon_Pool  = ["M4A1","ItemCompass","ItemMap"];
    _Magazine_Pool  = [["30Rnd_556x45_Stanag",8],["HandGrenade_West",2]];

  };
//-------------------------------------------------------------------------------------------------
  case 10:
  {
    _Weapon_Pool  = ["ACE_M249Para","ItemCompass","ItemMap"];
    _Magazine_Pool  = [["ACE_100Rnd_556x45_T_M249",8],["HandGrenade_West",2]];
  };
//-------------------------------------------------------------------------------------------------
  case 11:
  {
    _Weapon_Pool  = ["M240","ItemCompass","ItemMap"];
	_Magazine_Pool  = [["100Rnd_762x51_M240",3]];
  };
//-------------------------------------------------------------------------------------------------
  case 12:
  {
    _Weapon_Pool  = ["ACE_MP5A5","ItemCompass","ItemMap"];
    _Magazine_Pool  = [["30Rnd_9x19_MP5",8]];
  };
//-------------------------------------------------------------------------------------------------
// General Miltia Gear, Takistan Locals, Takistan Milita, NAPA, Insurgents, Lingor Rebels, CDF
//-------------------------------------------------------------------------------------------------
  case 13:
  {
    _Weapon_Pool  = ["AK_74_GL","Binocular","ItemCompass","ItemMap"];
    _Magazine_Pool  = [["30Rnd_545x39_AK",6],["1Rnd_HE_GP25",5],["HandGrenade_East",2]];
  };
//-------------------------------------------------------------------------------------------------
  case 14:
  {
    _Weapon_Pool  = ["AK_74","RPG7V","ItemCompass","ItemMap"];
    _Magazine_Pool  = [["30Rnd_545x39_AK",6],["PG7VL",2]];
  };
//-------------------------------------------------------------------------------------------------
  case 15:
  {
	_Weapon_Pool  = ["AKS_74","ItemCompass","ItemMap"];
    _Magazine_Pool  = [["30Rnd_545x39_AK",8],["HandGrenade_East",2]];

  };
//-------------------------------------------------------------------------------------------------
  case 16:
  {
    _Weapon_Pool  = ["RPK_74","ItemCompass","ItemMap"];
    _Magazine_Pool  = [["ACE_75Rnd_545x39_T_RPK",8],["HandGrenade_East",2]];
  };
//-------------------------------------------------------------------------------------------------
  case 17:
  {
    _Weapon_Pool  = ["PK","ItemCompass","ItemMap"];
	_Magazine_Pool  = [["100Rnd_762x54_PK",3]];
  };
//-------------------------------------------------------------------------------------------------
  case 18:
  {
    _Weapon_Pool  = ["AKS_74_U","ItemCompass","ItemMap"];
    _Magazine_Pool  = [["30Rnd_545x39_AK",8]];
  };
//-------------------------------------------------------------------------------------------------
// Czech Army
//-------------------------------------------------------------------------------------------------
  case 19:
  {
    _Weapon_Pool  = ["Sa58V_CCO_EP1","Binocular","ItemCompass","ItemMap"];
    _Magazine_Pool  = [["30Rnd_762x39_SA58",6],["HandGrenade_West",2]];
  };
//-------------------------------------------------------------------------------------------------
  case 20:
  {
    _Weapon_Pool  = ["Sa58V_EP1","MAAWS","ItemCompass","ItemMap"];
    _Magazine_Pool  = [["30Rnd_762x39_SA58",6],["MAAWS_HEDP",2]];
  };
//-------------------------------------------------------------------------------------------------
  case 21:
  {
	_Weapon_Pool  = ["Sa58V_EP1","ItemCompass","ItemMap"];
    _Magazine_Pool  = [["30Rnd_762x39_SA58",8],["HandGrenade_West",2]];

  };
//-------------------------------------------------------------------------------------------------
  case 22:
  {
    _Weapon_Pool  = ["M60A4_EP1","ItemCompass","ItemMap"];
    _Magazine_Pool  = [["100Rnd_762x51_M240",8],["HandGrenade_West",2]];
  };
//-------------------------------------------------------------------------------------------------
  case 23:
  {
    _Weapon_Pool  = ["Sa58V_EP1","ItemCompass","ItemMap"];
    _Magazine_Pool  = [["30Rnd_762x39_SA58",8]];
  };
//-------------------------------------------------------------------------------------------------
// British Armed Forces
//-------------------------------------------------------------------------------------------------
  case 24:
  {
    _Weapon_Pool  = ["BAF_L85A2_UGL_Holo","Binocular","ItemCompass","ItemMap"];
    _Magazine_Pool  = [["30Rnd_556x45_Stanag",6],["HandGrenade_West",2]];
  };
//-------------------------------------------------------------------------------------------------
  case 25:
  {
    _Weapon_Pool  = ["BAF_L85A2_RIS_Holo","MAAWS","ItemCompass","ItemMap"];
    _Magazine_Pool  = [["30Rnd_556x45_Stanag",6],["MAAWS_HEDP",2]];
  };
//-------------------------------------------------------------------------------------------------
  case 26:
  {
	_Weapon_Pool  = ["BAF_L85A2_RIS_Holo","ItemCompass","ItemMap"];
    _Magazine_Pool  = [["30Rnd_556x45_Stanag",8],["HandGrenade_West",2]];

  };
//-------------------------------------------------------------------------------------------------
  case 27:
  {
    _Weapon_Pool  = ["BAF_L110A1_Aim","ItemCompass","ItemMap"];
    _Magazine_Pool  = [["100Rnd_556x45_M249",8],["HandGrenade_West",2]];
  };
//-------------------------------------------------------------------------------------------------
  case 28:
  {
    _Weapon_Pool  = ["ACE_MP5A5","ItemCompass","ItemMap"];
    _Magazine_Pool  = [["30Rnd_9x19_MP5",8]];
  };
//-------------------------------------------------------------------------------------------------
// German KSK
//-------------------------------------------------------------------------------------------------
  case 29:
  {
    _Weapon_Pool  = ["G36C_camo","Binocular","ItemCompass","ItemMap"];
    _Magazine_Pool  = [["30Rnd_556x45_G36",6],["HandGrenade_West",2]];
  };
//-------------------------------------------------------------------------------------------------
  case 30:
  {
    _Weapon_Pool  = ["G36C_camo","MAAWS","ItemCompass","ItemMap"];
    _Magazine_Pool  = [["30Rnd_556x45_G36",6],["MAAWS_HEDP",2]];
  };
//-------------------------------------------------------------------------------------------------
  case 31:
  {
	_Weapon_Pool  = ["G36C_camo","ItemCompass","ItemMap"];
    _Magazine_Pool  = [["30Rnd_556x45_G36",8],["HandGrenade_West",2]];

  };
//-------------------------------------------------------------------------------------------------
  case 32:
  {
    _Weapon_Pool  = ["ACE_MG36_D","ItemCompass","ItemMap"];
    _Magazine_Pool  = [["100Rnd_556x45_BetaCMag",8],["HandGrenade_West",2]];
  };
//-------------------------------------------------------------------------------------------------
  case 33:
  {
    _Weapon_Pool  = ["ACE_MP7","ItemCompass","ItemMap"];
    _Magazine_Pool  = [["ACE_40Rnd_B_46x30_MP7",8]];
  };
//-------------------------------------------------------------------------------------------------
Default
{
  if(DAC_Basic_Value != 5) then
  {
    DAC_Basic_Value = 5;publicvariable "DAC_Basic_Value";
    hintc "Error: DAC_Config_Weapons > No valid config number";
  };
  if(true) exitwith {};
  };
};

_TempArray = [_Weapon_Pool] + [_Magazine_Pool];
_TempArray