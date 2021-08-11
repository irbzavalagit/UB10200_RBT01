/PROG  CC_INITSETP	  Macro
/ATTR
OWNER		= RIVIAN;
COMMENT		= "CCInitSetup V1.0";
PROG_SIZE	= 1058;
CREATE		= DATE 21-07-09  TIME 07:32:08;
MODIFIED	= DATE 21-07-09  TIME 07:32:08;
FILE_NAME	= CC_INITS;
VERSION		= 10;
LINE_COUNT	= 27;
MEMORY_SIZE	= 1402;
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
   3:  ! Robot: xxxxxxxx ;
   4:  !******************************** ;
   5:  ! Cap Change ;
   6:  ! Initial Conditions Setup ;
   7:  ! Version 1.0 ;
   8:  !******************************** ;
   9:   ;
  10:  ! Turn Water OFF ;
  11:  CALL WATER_OFF    ;
  12:  ! Checks Mag And Caps Present ;
  13:  CALL CC_MAGCHK    ;
  14:  ! Enable Stroke ;
  15:  $SPOTCONFIG.$STROKE_ENBL=1 ;
  16:  ! Disable Spot Error recovery ;
  17:  $SVPRG_ENB=0 ;
  18:  R[26:CC Error]=0    ;
  19:  $SGSCH1[89].$PUSH_DEPTH=($SGGUN1.$Setup.$MAXWDNTIP+2) ;
  20:  $SGSCH1[92].$PUSH_DEPTH=($SGGUN1.$Setup.$MAXWDNTIP+$SGGUN1.$Setup.$MAXWDNRBT) ;
  21:  ! Reset Capwear Complete ;
  22:  F[30:Capwear Complete]=(OFF) ;
  23:  ! Caps Changed ;
  24:  F[49:Caps Are Changed]=(ON) ;
  25:  !Tip Dress Request ;
  26:  F[52:TD Request]=(ON) ;
  27:   ;
/POS
/END
