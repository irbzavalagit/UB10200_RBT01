/PROG  TIPRESET_S232
/ATTR
OWNER		= RIVIAN;
COMMENT		= "Rest Stp St V2.4";
PROG_SIZE	= 736;
CREATE		= DATE 21-07-09  TIME 07:32:32;
MODIFIED	= DATE 21-07-09  TIME 07:32:32;
FILE_NAME	= TIPRESET;
VERSION		= 24;
LINE_COUNT	= 22;
MEMORY_SIZE	= 1028;
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
   7:  ! Version 2.4 ;
   8:  !******************************** ;
   9:   ;
  10:  ECHO STYLE(232) ;
  11:  ECHO OPTION    ;
  12:  !Manual Reset Stepers ;
  13:  SET PATH(242) ;
  14:   ;
  15:  !-------------------------------- ;
  16:  !Add Logic For Tool Changer Sg ;
  17:  !-------------------------------- ;
  18:   ;
  19:  CALL CC_RSTSTEPG1    ;
  20:   ;
  21:  HOME I/O    ;
  22:   ;
/POS
/END
