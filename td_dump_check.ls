/PROG  TD_DUMP_CHECK	  Macro
/ATTR
OWNER		= RIVIAN;
COMMENT		= "TD Dump Chk V1.0";
PROG_SIZE	= 1500;
CREATE		= DATE 21-07-09  TIME 07:32:50;
MODIFIED	= DATE 21-07-09  TIME 07:32:50;
FILE_NAME	= TD_DUMP_;
VERSION		= 10;
LINE_COUNT	= 64;
MEMORY_SIZE	= 2036;
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
   5:  ! Version 1.0 ;
   6:  !******************************** ;
   7:   ;
   8:  LBL[1:BEGIN] ;
   9:   ;
  10:  IF (AR[1]=1),JMP LBL[10] ;
  11:  IF (AR[1]=2),JMP LBL[20] ;
  12:  IF (AR[1]=3),JMP LBL[30] ;
  13:  IF (AR[1]=4),JMP LBL[40] ;
  14:  JMP LBL[980] ;
  15:   ;
  16:   ;
  17:  LBL[10:Dump 1] ;
  18:   ;
  19:  ! Check TD Dump Retracted ;
  20:  $WAITTMOUT=500 ;
  21:  WAIT DI[806:TD1 Home Pos1]=ON AND DI[807:TD1 Work Pos1]=OFF TIMEOUT,LBL[981] ;
  22:   ;
  23:  END ;
  24:   ;
  25:  LBL[20:Dump 2] ;
  26:   ;
  27:  ! Check TD Dump Retracted ;
  28:  $WAITTMOUT=500 ;
  29:  WAIT DI[810:TD2 Home Pos1]=ON AND DI[811:TD2 Work Pos1]=OFF TIMEOUT,LBL[981] ;
  30:   ;
  31:  END ;
  32:  LBL[30:Dump 3] ;
  33:   ;
  34:  ! Check TD Dump Retracted ;
  35:  $WAITTMOUT=500 ;
  36:  WAIT DI[814:TD3 Home Pos1]=ON AND DI[815:TD3 Work Pos1]=OFF TIMEOUT,LBL[981] ;
  37:   ;
  38:  END ;
  39:  LBL[40:Dump 4] ;
  40:   ;
  41:  ! Check TD Dump Retracted ;
  42:  $WAITTMOUT=500 ;
  43:  WAIT DI[818:TD4 Home Pos1]=ON AND DI[819:TD4 Work Pos1]=OFF TIMEOUT,LBL[981] ;
  44:   ;
  45:  END ;
  46:   ;
  47:   ;
  48:  !******************************** ;
  49:  ! Fault Section ;
  50:  !******************************** ;
  51:  LBL[980:Invalin Arg] ;
  52:  GO[7:User Fault]=3 ;
  53:  UALM[3] ;
  54:  GO[7:User Fault]=0 ;
  55:  JMP LBL[1] ;
  56:   ;
  57:  LBL[981:DUMP NOT RET] ;
  58:  ! Tip Dress Dump Not Retracted ;
  59:  GO[7:User Fault]=70 ;
  60:  UALM[70] ;
  61:  GO[7:User Fault]=0 ;
  62:  JMP LBL[1] ;
  63:   ;
  64:   ;
/POS
/END
