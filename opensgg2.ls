/PROG  OPENSGG2	  Macro
/ATTR
OWNER		= RIVIAN;
COMMENT		= "Open SG G2 V1.1";
PROG_SIZE	= 954;
CREATE		= DATE 21-07-09  TIME 07:32:24;
MODIFIED	= DATE 21-07-09  TIME 07:32:24;
FILE_NAME	= OPENSGG2;
VERSION		= 11;
LINE_COUNT	= 26;
MEMORY_SIZE	= 1386;
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
   4:  ! Open Group 2 Servo Guns ;
   5:  ! Gun 1 And Gun 2 If Applies ;
   6:  ! Version 1.1 ;
   7:  !******************************** ;
   8:   ;
   9:  ! Initialize Position Register ;
  10:  PR[25:MAX GUN OPENING]=JPOS    ;
  11:  ! Group 2 Servo Gun 1 Open Limit ;
  12:  R[40:TD Spare]=$SGGUN1.$SGTWD.$LIMOPEN ;
  13:  ! Setup Max Gun Opening ;
  14:  PR[GP2:25,1:MAX GUN OPENING]=R[40:TD Spare]+5    ;
  15:   ;
  16:  ! Checks For Gun 2 Present ;
  17:  IF $SPOTEQSETUP[1].$NUM_GUNS<>2,JMP LBL[10] ;
  18:  ! Group 2 Servo Gun 2 Open Limit ;
  19:  R[40:TD Spare]=$SGGUN2.$SGTWD.$LIMOPEN ;
  20:  ! Setup Max Gun Opening ;
  21:  PR[GP2:25,2:MAX GUN OPENING]=R[40:TD Spare]+5    ;
  22:   ;
  23:  LBL[10:OPEN_GUNS] ;
  24:   ;
  25:J PR[25:MAX GUN OPENING] 100% FINE    ;
  26:   ;
/POS
/END
