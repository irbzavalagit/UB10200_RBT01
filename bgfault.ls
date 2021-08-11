/PROG  BGFAULT	  Macro
/ATTR
OWNER		= RIVIAN;
COMMENT		= "BG Fault V2.0";
PROG_SIZE	= 994;
CREATE		= DATE 21-07-09  TIME 07:31:20;
MODIFIED	= DATE 21-07-09  TIME 07:31:20;
FILE_NAME	= BGFAULT;
VERSION		= 20;
LINE_COUNT	= 40;
MEMORY_SIZE	= 1466;
PROTECT		= READ_WRITE;
TCD:  STACK_SIZE	= 0,
      TASK_PRIORITY	= 50,
      TIME_SLICE	= 0,
      BUSY_LAMP_OFF	= 0,
      ABORT_REQUEST	= 0,
      PAUSE_REQUEST	= 0;
DEFAULT_GROUP	= *,*,*,*,*;
CONTROL_CODE	= 00000000 00000000;
/APPL
/MN
   1:  !******************************** ;
   2:  ! RIVIAN AUTOMOTIVE ;
   3:  ! Backgroung Logic Fault ;
   4:  ! Version 2.0 ;
   5:  !******************************** ;
   6:   ;
   7:  LBL[10:BGMain] ;
   8:  IF (F[1:BG Main Running]=ON),JMP LBL[20] ;
   9:  !Not Valid BG number ;
  10:  GO[7:User Fault]=11 ;
  11:  UALM[11] ;
  12:   ;
  13:  LBL[20:BG 1 Running] ;
  14:  IF (F[2:BG2 Running]=ON),JMP LBL[30] ;
  15:  !Not Valid BG number ;
  16:  GO[7:User Fault]=12 ;
  17:  UALM[12] ;
  18:   ;
  19:  LBL[30:BG 2 Running] ;
  20:  IF (F[3:BG3 Running]=ON),JMP LBL[40] ;
  21:  !Not Valid BG number ;
  22:  GO[7:User Fault]=13 ;
  23:  UALM[13] ;
  24:   ;
  25:  LBL[40:BG 3 Running] ;
  26:  IF (F[4:BG4 Running]=ON),JMP LBL[50] ;
  27:  !Not Valid BG number ;
  28:  GO[7:User Fault]=14 ;
  29:  UALM[14] ;
  30:   ;
  31:  LBL[50:BG 4 Running] ;
  32:  IF (F[5:BG5 Running]=ON),JMP LBL[90] ;
  33:  !Not Valid BG number ;
  34:  GO[7:User Fault]=15 ;
  35:  UALM[15] ;
  36:   ;
  37:  !RESET ALARMS IF OK ;
  38:  LBL[90:Reset] ;
  39:  GO[7:User Fault]=0 ;
  40:   ;
/POS
/END
