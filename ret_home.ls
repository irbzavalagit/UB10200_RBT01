/PROG  RET_HOME
/ATTR
OWNER		= RIVIAN;
COMMENT		= "Rtrn Pnce 2 Home";
PROG_SIZE	= 550;
CREATE		= DATE 21-07-09  TIME 07:31:58;
MODIFIED	= DATE 21-07-09  TIME 07:31:58;
FILE_NAME	= RET_HOME;
VERSION		= 21;
LINE_COUNT	= 17;
MEMORY_SIZE	= 854;
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
   5:  ! Return Home From Pounce ;
   6:  ! Version 2.1 ;
   7:  !******************************** ;
   8:   ;
   9:  !Pounce To Home Path ;
  10:  SET PATH(251) ;
  11:   ;
  12:  Do Bwd Exit    ;
  13:   ;
  14:  MOVE TO HOME    ;
  15:   ;
  16:  ABORT ;
  17:   ;
/POS
/END
