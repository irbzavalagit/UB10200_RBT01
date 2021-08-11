/PROG  WATER_OFF	  Macro
/ATTR
OWNER		= RIVIAN;
COMMENT		= "Water Off V1.0";
PROG_SIZE	= 894;
CREATE		= DATE 21-07-09  TIME 07:32:56;
MODIFIED	= DATE 21-07-09  TIME 07:32:56;
FILE_NAME	= WATER_OF;
VERSION		= 10;
LINE_COUNT	= 32;
MEMORY_SIZE	= 1430;
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
   4:  ! Water Saver Water OFF ;
   5:  ! Version 1.0 ;
   6:  !******************************** ;
   7:   ;
   8:  LBL[1:BEGIN] ;
   9:   ;
  10:  ! Set Water Off ;
  11:  F[41:WS1 Water OFF]=(ON) ;
  12:   ;
  13:  ! Check Water Flow OK Signal Off ;
  14:  DO[773:Wateroff1]=ON ;
  15:   ;
  16:  $WAITTMOUT=500 ;
  17:  WAIT (DI[773:Ws1ValveClsd]=ON AND DI[775:Wtr flow OK ]=OFF) TIMEOUT,LBL[980] ;
  18:   ;
  19:  END ;
  20:   ;
  21:   ;
  22:  !******************************** ;
  23:  ! Fault Section ;
  24:  !******************************** ;
  25:  LBL[980:WS Not Closed] ;
  26:  ! WS Valve Not Closed ;
  27:  GO[7:User Fault]=69 ;
  28:  UALM[69] ;
  29:  GO[7:User Fault]=0 ;
  30:  JMP LBL[1] ;
  31:   ;
  32:   ;
/POS
/END
