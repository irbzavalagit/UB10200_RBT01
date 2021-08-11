/PROG  CW_UPDAT	  Macro
/ATTR
OWNER		= RIVIAN;
COMMENT		= "CapWearUpdatV1.0";
PROG_SIZE	= 574;
CREATE		= DATE 21-07-09  TIME 07:32:14;
MODIFIED	= DATE 21-07-09  TIME 07:32:14;
FILE_NAME	= CW_UPDAT;
VERSION		= 10;
LINE_COUNT	= 14;
MEMORY_SIZE	= 1062;
PROTECT		= READ_WRITE;
TCD:  STACK_SIZE	= 0,
      TASK_PRIORITY	= 50,
      TIME_SLICE	= 0,
      BUSY_LAMP_OFF	= 0,
      ABORT_REQUEST	= 0,
      PAUSE_REQUEST	= 0;
DEFAULT_GROUP	= *,1,*,*,*;
CONTROL_CODE	= 00000000 00000000;
/APPL
/MN
   1:  !******************************** ;
   2:  ! RIVIAN AUTOMOTIVE ;
   3:  !******************************** ;
   4:  ! Update Cap Wear ;
   5:  ! Version 1.0 ;
   6:  !******************************** ;
   7:   ;
   8:  IF (DI[34:DryCycle Mode]=ON OR $SPOTCONFIG.$STROKE_ENBL=0 OR DO[470:FFRActive]=ON),JMP LBL[99] ;
   9:   ;
  10:  ! Tip Wear Update ;
  11:  CALL WR_UPDAT(1,0) ;
  12:   ;
  13:  LBL[99] ;
  14:   ;
/POS
/END
