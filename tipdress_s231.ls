/PROG  TIPDRESS_S231
/ATTR
OWNER		= RIVIAN;
COMMENT		= "TD CarGun1 V2.3";
PROG_SIZE	= 580;
CREATE		= DATE 21-07-09  TIME 07:32:32;
MODIFIED	= DATE 21-07-09  TIME 07:32:32;
FILE_NAME	= TIPDRESS;
VERSION		= 23;
LINE_COUNT	= 19;
MEMORY_SIZE	= 900;
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
   5:  ! Main Program Tip Dress ;
   6:  ! Version 2.3 ;
   7:  !******************************** ;
   8:   ;
   9:  ECHO STYLE(231) ;
  10:  ECHO OPTION    ;
  11:   ;
  12:  CALL TD_POUNC    ;
  13:   ;
  14:  CALL TD_GUN1    ;
  15:   ;
  16:  CALL TDRETHOM    ;
  17:   ;
  18:  MOVE TO HOME    ;
  19:   ;
/POS
/END
