/PROG  TD_DUMP_RET	  Macro
/ATTR
OWNER		= RIVIAN;
COMMENT		= "Ret TD Dump V1.1";
PROG_SIZE	= 1330;
CREATE		= DATE 21-07-09  TIME 07:32:50;
MODIFIED	= DATE 21-07-09  TIME 07:32:50;
FILE_NAME	= TD_DUMP_;
VERSION		= 11;
LINE_COUNT	= 55;
MEMORY_SIZE	= 1774;
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
   2:  !        RIVIAN AUTOMOTIVE ;
   3:  !******************************** ;
   4:  ! Return Tip Dress Dump ;
   5:  ! Version 1.1 ;
   6:  !******************************** ;
   7:   ;
   8:  LBL[1:BEGIN] ;
   9:   ;
  10:  ! K-Lifter Solenoid ;
  11:  DO[804:ContrlTD1]=OFF ;
  12:   ;
  13:  ! Check K-Lifter Prox Off ;
  14:  $WAITTMOUT=500 ;
  15:  WAIT DI[804:TD1 Ready]=OFF TIMEOUT,LBL[980] ;
  16:   ;
  17:  WAIT    .30(sec) ;
  18:  ! Retract TD Dump ;
  19:  DO[807:RetTD1Dump]=ON ;
  20:  DO[806:AdvTD1Dump]=OFF ;
  21:   ;
  22:  ! Check TD Dump Not Advanced ;
  23:  WAIT DI[807:TD1 Work Pos1]=OFF TIMEOUT,LBL[981] ;
  24:   ;
  25:  ! Check TD Dump Retracted ;
  26:  WAIT DI[806:TD1 Home Pos1]=ON AND DI[807:TD1 Work Pos1]=OFF TIMEOUT,LBL[982] ;
  27:   ;
  28:  END ;
  29:   ;
  30:   ;
  31:  !******************************** ;
  32:  ! Fault Section ;
  33:  !******************************** ;
  34:  LBL[980:K-Lifter On] ;
  35:  ! K-Lifter Prox Still On ;
  36:  GO[7:User Fault]=79 ;
  37:  UALM[79] ;
  38:  GO[7:User Fault]=0 ;
  39:  JMP LBL[1] ;
  40:   ;
  41:  LBL[981:DUMP STILL ADV] ;
  42:  ! Tip Dress Dump Still Advanced ;
  43:  GO[7:User Fault]=73 ;
  44:  UALM[73] ;
  45:  GO[7:User Fault]=0 ;
  46:  JMP LBL[1] ;
  47:   ;
  48:  LBL[982:DUMP NOT RET] ;
  49:  ! Tip Dress Dump Not Retracted ;
  50:  GO[7:User Fault]=70 ;
  51:  UALM[70] ;
  52:  GO[7:User Fault]=0 ;
  53:  JMP LBL[1] ;
  54:   ;
  55:   ;
/POS
/END
