/PROG  WATER_ON	  Macro
/ATTR
OWNER		= RIVIAN;
COMMENT		= "Water On V1.0";
PROG_SIZE	= 1290;
CREATE		= DATE 21-07-09  TIME 07:32:58;
MODIFIED	= DATE 21-07-09  TIME 07:32:58;
FILE_NAME	= WATER_ON;
VERSION		= 10;
LINE_COUNT	= 57;
MEMORY_SIZE	= 1726;
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
   2:  !           RIVIAN Motors ;
   3:  !******************************** ;
   4:  ! Water Saver Water ON ;
   5:  ! Version 1.0 ;
   6:  !******************************** ;
   7:   ;
   8:  LBL[1:BEGIN] ;
   9:   ;
  10:  ! Reset Water Off ;
  11:  F[41:WS1 Water OFF]=(OFF) ;
  12:   ;
  13:  ! WS Robot Bypass ;
  14:  IF (DO[774:WSBypass1]=ON),JMP LBL[10] ;
  15:   ;
  16:  ! WS In Bypass Mode ;
  17:  IF (DI[774:Ws1Bypassed]=ON) THEN ;
  18:  DO[774:WSBypass1]=ON ;
  19:  WAIT    .50(sec) ;
  20:  DO[774:WSBypass1]=OFF ;
  21:  ENDIF ;
  22:   ;
  23:  ! WS Valve Closed ;
  24:  LBL[10] ;
  25:  IF (DI[773:Ws1ValveClsd]=ON) THEN ;
  26:  DO[773:Wateroff1]=ON ;
  27:  WAIT    .50(sec) ;
  28:  DO[773:Wateroff1]=OFF ;
  29:  WAIT   1.00(sec) ;
  30:  ENDIF ;
  31:   ;
  32:  ! If Faulted Reset Water Saver ;
  33:  IF (DI[772:Wtr saver OK]=OFF) THEN ;
  34:  DO[772:Rst wtr savr]=ON ;
  35:  WAIT    .50(sec) ;
  36:  DO[772:Rst wtr savr]=OFF ;
  37:  WAIT   1.00(sec) ;
  38:  ENDIF ;
  39:   ;
  40:  ! Check Water Flow OK Signal ON ;
  41:  $WAITTMOUT=500 ;
  42:  WAIT DI[772:Wtr saver OK]=ON TIMEOUT,LBL[980] ;
  43:   ;
  44:  END ;
  45:   ;
  46:   ;
  47:  !******************************** ;
  48:  ! Fault Section ;
  49:  !******************************** ;
  50:  LBL[980:Flow Not OK] ;
  51:  ! WS Not OK To Weld ;
  52:  GO[7:User Fault]=54 ;
  53:  UALM[54] ;
  54:  GO[7:User Fault]=0 ;
  55:  JMP LBL[1] ;
  56:   ;
  57:   ;
/POS
/END
