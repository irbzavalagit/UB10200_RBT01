/PROG  CW_VALID	  Macro
/ATTR
OWNER		= RIVIAN;
COMMENT		= "CapWearValidV1.0";
PROG_SIZE	= 710;
CREATE		= DATE 21-07-09  TIME 07:32:16;
MODIFIED	= DATE 21-07-09  TIME 07:32:16;
FILE_NAME	= CW_VALID;
VERSION		= 10;
LINE_COUNT	= 19;
MEMORY_SIZE	= 1178;
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
   4:  ! Checks Valid Cap Wear Status ;
   5:  ! Version 1.0 ;
   6:  !******************************** ;
   7:   ;
   8:  IF (DI[34:DryCycle Mode]=ON OR $SPOTCONFIG.$STROKE_ENBL=0 OR DO[470:FFRActive]=ON),JMP LBL[99] ;
   9:  IF (F[49:Caps Are Changed]=OFF AND F[48:Tip Dressed]=OFF AND F[30:Capwear Complete]=ON),JMP LBL[99] ;
  10:   ;
  11:  ! Tip Wear Update ;
  12:  CALL WR_UPDAT(1,0) ;
  13:  ! Reset Cap Change ;
  14:  F[49:Caps Are Changed]=(OFF) ;
  15:  ! Reset Tip Dress ;
  16:  F[48:Tip Dressed]=(OFF) ;
  17:   ;
  18:  LBL[99] ;
  19:   ;
/POS
/END
