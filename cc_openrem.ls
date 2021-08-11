/PROG  CC_OPENREM	  Macro
/ATTR
OWNER		= RIVIAN;
COMMENT		= "OpenRemover V1.0";
PROG_SIZE	= 1104;
CREATE		= DATE 21-07-09  TIME 07:32:46;
MODIFIED	= DATE 21-07-09  TIME 07:32:46;
FILE_NAME	= CC_OPENR;
VERSION		= 10;
LINE_COUNT	= 42;
MEMORY_SIZE	= 1600;
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
   3:  !******************************** ;
   4:  ! Aplication # 1 ;
   5:  ! Open Cap Change Remover ;
   6:  ! Version 1.0 ;
   7:  !******************************** ;
   8:   ;
   9:  LBL[1:BEGIN] ;
  10:   ;
  11:  ! Open Cap Remover ;
  12:  DO[820:TC1 Valve OP/CL]=OFF ;
  13:   ;
  14:  ! Set Timeout Duration ;
  15:  $WAITTMOUT=1000 ;
  16:   ;
  17:  ! Check Cap Remover Not Closed ;
  18:  WAIT DI[820:TC1 Cylinder Adv]=OFF TIMEOUT,LBL[980] ;
  19:   ;
  20:  ! Check Cap Remover Opened ;
  21:  WAIT DI[821:TC1 Cylinder Ret]=ON TIMEOUT,LBL[981] ;
  22:   ;
  23:  END ;
  24:   ;
  25:   ;
  26:  !******************************** ;
  27:  ! Fault Section ;
  28:  !******************************** ;
  29:  LBL[980:REMOVER CLOSED] ;
  30:  ! Cap remover still closed ;
  31:  GO[6:Error Codes]=65 ;
  32:  UALM[65] ;
  33:  GO[6:Error Codes]=0 ;
  34:  JMP LBL[1] ;
  35:   ;
  36:  LBL[981:RMVR NOT OPENED] ;
  37:  ! Cap Remover not opened ;
  38:  GO[6:Error Codes]=62 ;
  39:  UALM[62] ;
  40:  GO[6:Error Codes]=0 ;
  41:  JMP LBL[1] ;
  42:   ;
/POS
/END
