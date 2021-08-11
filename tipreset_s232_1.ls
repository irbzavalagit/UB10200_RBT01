/PROG  TIPRESET_S232_1
/ATTR
OWNER		= RIVIAN;
COMMENT		= "Rest Stp Al V1.0";
PROG_SIZE	= 800;
CREATE		= DATE 21-07-09  TIME 07:32:34;
MODIFIED	= DATE 21-07-09  TIME 07:32:34;
FILE_NAME	= TIPRESET;
VERSION		= 10;
LINE_COUNT	= 27;
MEMORY_SIZE	= 1088;
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
   5:  ! Main Prog Reset Steppers ;
   6:  ! For Spot Steel Gun ;
   7:  ! Version 1.0 ;
   8:  !******************************** ;
   9:   ;
  10:  ECHO STYLE(232) ;
  11:  ECHO OPTION    ;
  12:   ;
  13:  !-------------------------------- ;
  14:  !Add Logic For Tool Changer Sg ;
  15:  !-------------------------------- ;
  16:   ;
  17:  CALL TD_POUNC    ;
  18:   ;
  19:  !Manual Reset Stepers ;
  20:  SET PATH(242) ;
  21:   ;
  22:  CALL CC_RSTSTEPG1    ;
  23:   ;
  24:  CALL TDRETHOM    ;
  25:   ;
  26:  HOME I/O    ;
  27:   ;
/POS
/END
