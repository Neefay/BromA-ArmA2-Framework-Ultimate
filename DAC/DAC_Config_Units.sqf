//////////////////////////////
//    Dynamic-AI-Creator    //
//    Version 2.1 - 2009    //
//--------------------------//
//    DAC_Config_Units      //
//--------------------------//
//    Script by Silola      //
//    silola@freenet.de     //
//////////////////////////////

private ["_TypNumber","_TempArray","_Unit_Pool_S","_Unit_Pool_V","_Unit_Pool_T","_Unit_Pool_A"];
_TypNumber = _this select 0;_TempArray = [];

switch (_TypNumber) do
{
//-------------------------------------------------------------------------------------------------
// Russians
  case 0:
  {
    _Unit_Pool_S = [["RU_Soldier_Crew",6],["RU_Soldier_SL",1],["RU_Soldier",3],["RU_Soldier_LAT",2],["RU_Soldier",3],["RU_Soldier_AR",4],["RU_Soldier_AR",5]];
    _Unit_Pool_V = ["GAZ_Vodnik","ACE_UAZ_MG_RU","ACE_BRDM2_RU","ACE_BRDM2_HQ_RU"];
    _Unit_Pool_T = ["ACE_BMP2_RU","BTR90","BMP3","ACE_BTR70_RU","ACE_T72BA_Base","ACE_T90A"];
    _Unit_Pool_A = [];
  };
//-------------------------------------------------------------------------------------------------
// USMC
  case 1:
  {
	_Unit_Pool_S = [["USMC_Soldier_Crew",12],["USMC_Soldier_Pilot",12],["USMC_Soldier_SL",7],["USMC_Soldier",9],["USMC_Soldier_AR",10],["USMC_Soldier_AR",11],["USMC_Soldier",9],["USMC_Soldier_LAT",8]];
    _Unit_Pool_V = ["HMMWV","HMMWV_M2","HMMWV_Armored","HMMWV_MK19","HMMWV_TOW","HMMWV_Avenger","MTVR"];
    _Unit_Pool_T = ["LAV25","AAV","M1A1","M1A2_TUSK_MG","ACE_M113A3","ACE_M2A2_W"];
    _Unit_Pool_A = [];
  };
//-------------------------------------------------------------------------------------------------
// Insurgents
  case 2:
  {
    _Unit_Pool_S = [["Ins_Soldier_Crew",18],["Ins_Soldier_1",15],["Ins_Soldier_CO",13],["Ins_Soldier_MG",16],["Ins_Soldier_MG",17],["ACE_Ins_Soldier_RPG",14],["Ins_Soldier_GL",15]];
    _Unit_Pool_V = ["UAZ_MG_INS","UralOpen_INS","UAZ_INS","BRDM2_INS","BRDM2_INS"];
    _Unit_Pool_T = ["BMP2_INS","ACE_BTR70_INS","T72_INS"];
    _Unit_Pool_A = [];
  };
//-------------------------------------------------------------------------------------------------
// Civilians
  case 3:
  {
    _Unit_Pool_S = ["Assistant","Citizen1","Citizen2","Citizen3","Citizen4","Doctor","Functionary1","Functionary2","Priest","Profiteer1","Profiteer2","Profiteer3","Profiteer4","SchoolTeacher","Villager1","Villager2","Villager3","Villager4","Woodlander1","Woodlander2","Woodlander3","Woodlander4","Worker1","Worker2","Worker3","Worker4","Damsel1","Damsel2","Damsel3","Damsel4","Damsel5","Farmwife1","Farmwife2","Farmwife3","Farmwife4","Farmwife5","Hooker1","Hooker2","Hooker3","Hooker4","Hooker5","HouseWife1","HouseWife2","HouseWife3","HouseWife4","HouseWife5","Madam1","Madam2","Madam3","Madam4","Madam5","Secretary1","Secretary2","Secretary3","Secretary4","Secretary5","Sportswoman1","Sportswoman2","Sportswoman3","Sportswoman4","Sportswoman5","WorkWoman1","WorkWoman2","WorkWoman3","WorkWoman4","WorkWoman5"];
    _Unit_Pool_V = ["Skoda","SkodaBlue","SkodaGreen","SkodaRed","hilux1_civil_1_open","hilux1_civil_2_covered","hilux1_civil_3_open","datsun1_civil_1_open","datsun1_civil_2_covered","datsun1_civil_3_open","car_sedan","UralCivil","UralCivil2","Lada_base","Lada1","Lada","VWGolf","V3S_Civ","Ikarus"];
    _Unit_Pool_T = ["Tractor","UralCivil","UralCivil2","V3S_Civ"];
    _Unit_Pool_A = ["Mi17_Civilian"];
  };
//-------------------------------------------------------------------------------------------------
// CDF
  case 4:
  {
    _Unit_Pool_S = [["CDF_Soldier_Crew",18],["CDF_Soldier_Pilot",18],["CDF_Soldier_TL",13],["CDF_Soldier",15],["CDF_Soldier_MG",17],["CDF_Soldier_AR",16],["CDF_Soldier_RPG",14],["CDF_Soldier",15]];
    _Unit_Pool_V = ["UAZ_MG_CDF","BRDM2_CDF","Ural_CDF","ACE_BTR70_CDF"];
    _Unit_Pool_T = ["BMP2_CDF","T72_CDF"];
    _Unit_Pool_A = [];
  };
//-------------------------------------------------------------------------------------------------
// NAPA
  case 5:
  {
    _Unit_Pool_S = [["GUE_Soldier_Crew",18],["GUE_Soldier_CO",13],["GUE_Soldier_2",15],["GUE_Soldier_3",15],["GUE_Soldier_1",15],["GUE_Soldier_MG",17],["GUE_Soldier_AT",14],["GUE_Soldier_2",15],["GUE_Soldier_1",15]];
    _Unit_Pool_V = ["V3S_Gue","Pickup_PK_GUE"];
    _Unit_Pool_T = ["BRDM2_Gue","ACE_BTR70_GUE"];
    _Unit_Pool_A = [];
  };
//-------------------------------------------------------------------------------------------------
// MVD
  case 6:
  {
    _Unit_Pool_S = [["RU_Soldier_Crew",6],["RU_Soldier_Pilot",6],["MVD_Soldier_TL",1],["MVD_Soldier",3],["MVD_Soldier_MG",4],["MVD_Soldier_MG",5],["MVD_Soldier",3],["MVD_Soldier_AT",2],["MVD_Soldier",3]];
    _Unit_Pool_V = ["UAZ_RU","Kamaz","KamazOpen","UAZ_AGS30_RU","GAZ_Vodnik","GAZ_Vodnik_HMG"];
    _Unit_Pool_T = ["BTR90","BMP3"];
    _Unit_Pool_A = [];
  };
//-------------------------------------------------------------------------------------------------
// Takistani Army
  case 7:
  {
    _Unit_Pool_S = [["TK_Soldier_Crew_EP1",18],["TK_Soldier_Pilot_EP1",18],["TK_Soldier_SL_EP1",13],["TK_Soldier_EP1",15],["TK_Soldier_MG_EP1",17],["TK_Soldier_AT_EP1",14],["TK_Soldier_AR_EP1",16],["TK_Soldier_EP1",15],["TK_Soldier_EP1",15]];
    _Unit_Pool_V = ["UAZ_Unarmed_TK_EP1","BMP2_TK_EP1","V3S_TK_EP1","V3S_Open_TK_EP1","UAZ_MG_TK_EP1","UAZ_AGS30_TK_EP1","LandRover_MG_TK_EP1","LandRover_SPG9_TK_EP1","M113_TK_EP1"];
    _Unit_Pool_T = ["BTR60_TK_EP1","T34_TK_EP1","T55_TK_EP1","T72_TK_EP1"];
    _Unit_Pool_A = [];
  };
//-------------------------------------------------------------------------------------------------
// Takistani Militia
  case 8:
  {
    _Unit_Pool_S = [["TK_INS_Soldier_EP1",15],["TK_INS_Soldier_EP1",15],["TK_INS_Soldier_TL_EP1",13],["TK_INS_Soldier_EP1",15],["TK_INS_Soldier_2_EP1",15],["TK_INS_Soldier_MG_EP1",17],["TK_INS_Soldier_AR_EP1",16],["TK_INS_Soldier_AT_EP1",14],["TK_INS_Soldier_4_EP1",15],["TK_INS_Soldier_3_EP1",15]];
    _Unit_Pool_V = ["LandRover_MG_TK_INS_EP1","LandRover_SPG9_TK_INS_EP1","V3S_TK_GUE_EP1"];
    _Unit_Pool_T = ["BTR40_TK_INS_EP1","BTR40_MG_TK_INS_EP1"];
    _Unit_Pool_A = [];
  };
//-------------------------------------------------------------------------------------------------
// Takistani Locals
  case 9:
  {
    _Unit_Pool_S = [["TK_GUE_Soldier_2_EP1",15],["TK_GUE_Soldier_2_EP1",15],["TK_GUE_Soldier_TL_EP1",13],["TK_GUE_Soldier_EP1",15],["TK_GUE_Soldier_2_EP1",15],["TK_GUE_Soldier_MG_EP1",17],["TK_GUE_Soldier_4_EP1",15],["TK_GUE_Soldier_3_EP1",15],["TK_GUE_Soldier_AT_EP1",14],["TK_GUE_Soldier_AR_EP1",16],["TK_GUE_Soldier_EP1",15],["TK_GUE_Soldier_2_EP1",15]];
    _Unit_Pool_V = ["V3S_TK_GUE_EP1","Offroad_DSHKM_TK_GUE_EP1","Offroad_SPG9_TK_GUE_EP1","Pickup_PK_TK_GUE_EP1"];
    _Unit_Pool_T = ["BRDM2_TK_GUE_EP1","BTR40_TK_GUE_EP1","BTR40_MG_TK_GUE_EP1","T34_TK_GUE_EP1"];
    _Unit_Pool_A = [];
  };
//-------------------------------------------------------------------------------------------------
// US Army
  case 10:
  {
    _Unit_Pool_S = [["US_Soldier_Crew_EP1",12],["US_Soldier_Pilot_EP1",12],["US_Soldier_SL_EP1",7],["US_Soldier_AR_EP1",10],["US_Soldier_LAT_EP1",8],["US_Soldier_EP1",9],["US_Soldier_MG_EP1",11]];
    _Unit_Pool_V = ["HMMWV_M1151_M2_DES_EP1","HMMWV_MK19_DES_EP1","HMMWV_DES_EP1","MTVR_DES_EP1"];
    _Unit_Pool_T = ["M1A2_US_TUSK_MG_EP1","ACE_Stryker_ICV_M2_D","ACE_Stryker_RV_SLAT_D","M2A2_EP1"];
    _Unit_Pool_A = [];
  };
//-------------------------------------------------------------------------------------------------
// Czech Army
  case 11:
  {
    _Unit_Pool_S = [["CZ_Soldier_DES_EP1",23],["CZ_Soldier_Pilot_EP1",23],["CZ_Soldier_SL_DES_EP1",19],["CZ_Soldier_MG_DES_EP1",22],["CZ_Soldier_DES_EP1",21],["CZ_Soldier_AT_DES_EP1",20],["CZ_Soldier_B_DES_EP1",21],["CZ_Soldier_DES_EP1",21]];
    _Unit_Pool_V = ["LandRover_CZ_EP1","HMMWV_M1151_M2_CZ_DES_EP1"];
    _Unit_Pool_T = [];
    _Unit_Pool_A = [];
  };
//-------------------------------------------------------------------------------------------------
// German KSK
  case 12:
  {
	_Unit_Pool_S = [["GER_Soldier_EP1",33],["GER_Soldier_EP1",33],["GER_Soldier_TL_EP1",29],["GER_Soldier_MG_EP1",32],["GER_Soldier_EP1",31],["GER_Soldier_Scout_EP1",31],["GER_Soldier_EP1",30],["GER_Soldier_MG_EP1",31]];
    _Unit_Pool_V = ["LandRover_CZ_EP1"];
    _Unit_Pool_T = [];
    _Unit_Pool_A = [];
  };
//-------------------------------------------------------------------------------------------------
// British Armed Forces Woodland
  case 13:
  {
    _Unit_Pool_S = [["BAF_creWman_W",28],["BAF_Pilot_W",28],["BAF_Soldier_SL_W",24],["BAF_Soldier_AR_W",27],["BAF_Soldier_MG_W",27],["BAF_Soldier_W",26],["BAF_Soldier_W",25],["BAF_Soldier_W",26]];
    _Unit_Pool_V = ["BAF_Jackal2_L2A1_W","BAF_Offroad_W"];
    _Unit_Pool_T = ["BAF_FV510_W"];
    _Unit_Pool_A = [];
  };
//-------------------------------------------------------------------------------------------------
// British Armed Forces Desert
  case 14:
  {
    _Unit_Pool_S = [["BAF_creWman_DDPM",28],["BAF_Pilot_DDPM",28],["BAF_Soldier_SL_DDPM",24],["BAF_Soldier_AR_DDPM",27],["BAF_Soldier_MG_DDPM",27],["BAF_Soldier_DDPM",26],["BAF_Soldier_DDPM",25],["BAF_Soldier_DDPM",26]];
    _Unit_Pool_V = ["BAF_Jackal2_L2A1_D","BAF_Offroad_D"];
    _Unit_Pool_T = ["BAF_FV510_D"];
    _Unit_Pool_A = [];
  };
//-------------------------------------------------------------------------------------------------
// Russian Desert
  case 15:
  {
    _Unit_Pool_S = [["ACE_RU_Soldier_Crew_D",6],["ACE_RU_Soldier_SL_D",1],["ACE_RU_Soldier_D",3],["ACE_RU_Soldier_LAT_D",2],["ACE_RU_Soldier_D",3],["ACE_RU_Soldier_AR_D",4],["ACE_RU_Soldier_AR_D",5]];
    _Unit_Pool_V = ["ACE_UAZ_RU_D","ACE_BRDM2_RU_D","ACE_UralOpen_RU_D"];
    _Unit_Pool_T = ["ACE_BTR70_RU_D","ACE_T72BA_Base","ACE_BMP2D_RU"];
    _Unit_Pool_A = [];
  };
//-------------------------------------------------------------------------------------------------
// OA Civilians
  case 16:
  {
    _Unit_Pool_S = ["TK_CIV_Takistani01_EP1","TK_CIV_Takistani02_EP1","TK_CIV_Takistani03_EP1","TK_CIV_Takistani04_EP1","TK_CIV_Takistani05_EP1","TK_CIV_Takistani06_EP1","TK_CIV_Woman01_EP1","TK_CIV_Woman02_EP1","TK_CIV_Woman03_EP1"];
    _Unit_Pool_V = ["Lada1_TK_CIV_EP1","Lada2_TK_CIV_EP1","LandRover_TK_CIV_EP1","TT650_TK_CIV_EP1","Old_bike_TK_CIV_EP1","Old_moto_TK_Civ_EP1","hilux1_civil_3_open_EP1","S1203_TK_CIV_EP1","SUV_TK_CIV_EP1","UAZ_Unarmed_TK_CIV_EP1","Ural_TK_CIV_EP1","V3S_Open_TK_CIV_EP1","Volha_1_TK_CIV_EP1","Volha_2_TK_CIV_EP1","VolhaLimo_TK_CIV_EP1","S1203_ambulance_EP1"];
    _Unit_Pool_T = [];
    _Unit_Pool_A = [];
  };
//-------------------------------------------------------------------------------------------------
// IBR Lingor Rebles
  case 17:
  {
	_Unit_Pool_S = [["ibr_arl_officer",13],["ibr_arl_rif",15],["ibr_arl_rif2",15],["ibr_arl_mg",17],["ibr_arl_at",14],["ibr_arl_ar",16]];
    _Unit_Pool_V = ["ibr_offroad_dshkm_arl","ARL_Kamaz3o"];
    _Unit_Pool_T = ["BRDM2_INS"];
    _Unit_Pool_A = [];
  };
//-------------------------------------------------------------------------------------------------
// IBR DrugLord's Army
  case 18:
  {
    _Unit_Pool_S = [["ibr_drg_man1",15],["ibr_drg_man2",16],["ibr_drg_man4",14],["ibr_drg_man5",13]];
    _Unit_Pool_V = [];
    _Unit_Pool_T = [];
    _Unit_Pool_A = [];
  };
//-------------------------------------------------------------------------------------------------
// UNO
  case 19:
  {
    _Unit_Pool_S = [["UN_CDF_Soldier_Crew_EP1",18],["UN_CDF_Soldier_Pilot_EP1",18],["UN_CDF_Soldier_SL_EP1",13],["UN_CDF_Soldier_EP1",15],["UN_CDF_Soldier_EP1",15],["UN_CDF_Soldier_AT_EP1",14],["UN_CDF_Soldier_MG_EP1",16],["UN_CDF_Soldier_MG_EP1",17]];
    _Unit_Pool_V = ["M113_UN_EP1","Ural_UN_EP1","UAZ_Unarmed_UN_EP1"];
    _Unit_Pool_T = ["BMP2_UN_EP1","ACE_BTR70_UN"];
    _Unit_Pool_A = [];
  };
//-------------------------------------------------------------------------------------------------
  Default
  {
    if(DAC_Basic_Value != 5) then
    {
      DAC_Basic_Value = 5;publicvariable "DAC_Basic_Value";
      hintc "Error: DAC_Config_Units > No valid config number";
    };
    if(true) exitwith {};
  };
};

if(count _this == 2) then
{
  _TempArray = _TempArray + [_Unit_Pool_S,_Unit_Pool_V,_Unit_Pool_T,_Unit_Pool_A];
}
else
{
  _TempArray = _Unit_Pool_V + _Unit_Pool_T + _Unit_Pool_A;
};
_TempArray