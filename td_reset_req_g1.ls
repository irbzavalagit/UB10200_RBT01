/PROG  TD_RESET_REQ_G1	  Macro
/ATTR
OWNER		= RIVIAN;
COMMENT		= "Reset TD Req G1";
PROG_SIZE	= 924;
CREATE		= DATE 21-07-09  TIME 07:32:54;
MODIFIED	= DATE 21-07-09  TIME 07:32:54;
FILE_NAME	= TD_RESET;
VERSION		= 10;
LINE_COUNT	= 32;
MEMORY_SIZE	= 1460;
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
   3:  !******************************** ;
   4:  ! Aplication # 1 ;
   5:  ! Reset TD Request G1 ;
   6:  ! Version 1.0 ;
   7:  !******************************** ;
   8:   ;
   9:  LBL[1:BEGIN] ;
  10:   ;
  11:  ! Reset Request TipDress Group1 ;
  12:  DO[717:TD Group 1]=PULSE,0.5sec ;
  13:   ;
  14:  ! Set Timeout Duration ;
  15:  $WAITTMOUT=500 ;
  16:   ;
  17:  ! Check Tip Dress Request G1 Ack ;
  18:  WAIT DI[724:Tip dress req   ]=OFF TIMEOUT,LBL[980] ;
  19:   ;
  20:  END ;
  21:   ;
  22:   ;
  23:  !******************************** ;
  24:  ! Fault Section ;
  25:  !******************************** ;
  26:  LBL[980:TD_Req_Not_Reset] ;
  27:  ! TD Request Not Reset ;
  28:  GO[6:Error Codes]=59 ;
  29:  UALM[59] ;
  30:  GO[6:Error Codes]=0 ;
  31:  JMP LBL[1] ;
  32:   ;
/POS
/END
