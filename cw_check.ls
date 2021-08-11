/PROG  CW_CHECK	  Macro
/ATTR
OWNER		= RIVIAN;
COMMENT		= "CapWearCheckV1.0";
PROG_SIZE	= 934;
CREATE		= DATE 21-07-09  TIME 07:32:14;
MODIFIED	= DATE 21-07-09  TIME 07:32:14;
FILE_NAME	= CW_CHECK;
VERSION		= 10;
LINE_COUNT	= 32;
MEMORY_SIZE	= 1470;
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
   4:  ! Checks Cap Wear Updated ;
   5:  ! Version 1.0 ;
   6:  !******************************** ;
   7:   ;
   8:  IF (DI[34:DryCycle Mode]=ON OR $SPOTCONFIG.$STROKE_ENBL=0 OR DO[470:FFRActive]=ON),JMP LBL[99] ;
   9:   ;
  10:  LBL[1] ;
  11:   ;
  12:  ! Set Timeout Duration ;
  13:  $WAITTMOUT=2000 ;
  14:  ! Check Cap Wear Complete ;
  15:  WAIT (F[30:Capwear Complete]=ON) TIMEOUT,LBL[980] ;
  16:   ;
  17:  LBL[99] ;
  18:   ;
  19:  END ;
  20:   ;
  21:   ;
  22:  !******************************** ;
  23:  ! Fault Section ;
  24:  !******************************** ;
  25:  LBL[980:WEAR NOT COMPLET] ;
  26:  ! Cap Wear Not Complete ;
  27:  GO[6:Error Codes]=50 ;
  28:  UALM[50] ;
  29:  GO[6:Error Codes]=0 ;
  30:  JMP LBL[1] ;
  31:   ;
  32:   ;
/POS
/END
