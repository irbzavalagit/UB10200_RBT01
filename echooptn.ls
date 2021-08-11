/PROG  ECHOOPTN	  Macro
/ATTR
OWNER		= RIVIAN;
COMMENT		= "Echo Option V2.0";
PROG_SIZE	= 1394;
CREATE		= DATE 21-07-09  TIME 07:31:26;
MODIFIED	= DATE 21-07-09  TIME 07:31:26;
FILE_NAME	= ECHOOPTN;
VERSION		= 20;
LINE_COUNT	= 69;
MEMORY_SIZE	= 1878;
PROTECT		= READ_WRITE;
TCD:  STACK_SIZE	= 0,
      TASK_PRIORITY	= 50,
      TIME_SLICE	= 0,
      BUSY_LAMP_OFF	= 0,
      ABORT_REQUEST	= 0,
      PAUSE_REQUEST	= 0;
DEFAULT_GROUP	= *,*,*,*,*;
CONTROL_CODE	= 00001000 00000000;
/APPL
/MN
   1:  !******************************** ;
   2:  ! RIVIAN AUTOMOTIVE ;
   3:  ! Macro Echo Option ;
   4:  ! Version 2.0 ;
   5:  !******************************** ;
   6:   ;
   7:  ! Echo Option Bit To Plc ;
   8:   ;
   9:  !Skip If In Teach Mode ;
  10:  IF SO[7:TP enabled]=ON,JMP LBL[900] ;
  11:   ;
  12:  ! Check Option Bit A ;
  13:  IF DI[81:OptionA]=OFF,JMP LBL[10] ;
  14:  DO[81:OptionAEcho]=ON ;
  15:   ;
  16:  LBL[10] ;
  17:  ! Check Option Bit B ;
  18:  IF DI[82:OptionB]=OFF,JMP LBL[20] ;
  19:  DO[82:OptionBEcho]=ON ;
  20:   ;
  21:  LBL[20] ;
  22:  ! Check Option Bit C ;
  23:  IF DI[83:OptionC]=OFF,JMP LBL[30] ;
  24:  DO[83:OptionCEcho]=ON ;
  25:   ;
  26:  LBL[30] ;
  27:  ! Check Option Bit D ;
  28:  IF DI[84:OptionD]=OFF,JMP LBL[40] ;
  29:  DO[84:OptionDEcho]=ON ;
  30:   ;
  31:  LBL[40] ;
  32:  ! Check Option Bit E ;
  33:  IF DI[85:OptionE]=OFF,JMP LBL[50] ;
  34:  DO[85:OptionEEcho]=ON ;
  35:   ;
  36:  LBL[50] ;
  37:  ! Check Option Bit F ;
  38:  IF DI[86:OptionF]=OFF,JMP LBL[60] ;
  39:  DO[86:OptionFEcho]=ON ;
  40:   ;
  41:  LBL[60] ;
  42:  ! Check Option Bit G ;
  43:  IF DI[87:OptionG]=OFF,JMP LBL[70] ;
  44:  DO[87:OptionGEcho]=ON ;
  45:   ;
  46:  LBL[70] ;
  47:  ! Check Option Bit H ;
  48:  IF DI[88:OptionH]=OFF,JMP LBL[999] ;
  49:  DO[88:OptionHEcho]=ON ;
  50:  JMP LBL[999] ;
  51:   ;
  52:   ;
  53:  LBL[900:Teach_Mode] ;
  54:  IF (F[11:Enable TeachEcho]=OFF),JMP LBL[999] ;
  55:   ;
  56:  Op. Entry Menu(10) ;
  57:   ;
  58:  DO[81:OptionAEcho]=R[81:Teach Option A] ;
  59:  DO[82:OptionBEcho]=R[82:Teach Option B] ;
  60:  DO[83:OptionCEcho]=R[83:Teach Option C] ;
  61:  DO[84:OptionDEcho]=R[84:Teach Option D] ;
  62:  DO[85:OptionEEcho]=R[85:Teach Option E] ;
  63:  DO[86:OptionFEcho]=R[86:Teach Option F] ;
  64:  DO[87:OptionGEcho]=R[87:Teach Option G] ;
  65:  DO[88:OptionHEcho]=R[88:Teach Option H] ;
  66:   ;
  67:   ;
  68:  LBL[999] ;
  69:   ;
/POS
/END
