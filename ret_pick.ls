/PROG  RET_PICK	  Macro
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "Rtrn Pick 2 Home";
PROG_SIZE	= 494;
CREATE		= DATE 21-07-09  TIME 07:31:58;
MODIFIED	= DATE 21-07-09  TIME 07:31:58;
FILE_NAME	= RET_HOME;
VERSION		= 10;
LINE_COUNT	= 14;
MEMORY_SIZE	= 810;
PROTECT		= READ_WRITE;
TCD:  STACK_SIZE	= 0,
      TASK_PRIORITY	= 50,
      TIME_SLICE	= 0,
      BUSY_LAMP_OFF	= 0,
      ABORT_REQUEST	= 0,
      PAUSE_REQUEST	= 0;
DEFAULT_GROUP	= 1,*,*,*,*;
CONTROL_CODE	= 00001000 00000000;
/APPL
/MN
   1:  !******************************** ;
   2:  ! RIVIAN AUTOMOTIVE ;
   3:  ! Robot: xxxxxxxx ;
   4:  !******************************** ;
   5:  ! Return Home From Pick ;
   6:  ! Version 1.0 ;
   7:  !******************************** ;
   8:   ;
   9:  Do Bwd Exit    ;
  10:   ;
  11:  MOVE TO HOME    ;
  12:   ;
  13:  ABORT ;
  14:   ;
/POS
/END
