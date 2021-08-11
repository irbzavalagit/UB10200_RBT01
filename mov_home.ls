/PROG  MOV_HOME
/ATTR
OWNER		= RIVIAN;
COMMENT		= "Move 2 Home V2.1";
PROG_SIZE	= 442;
CREATE		= DATE 21-07-09  TIME 07:31:56;
MODIFIED	= DATE 21-07-09  TIME 07:31:56;
FILE_NAME	= MOV_HOME;
VERSION		= 21;
LINE_COUNT	= 12;
MEMORY_SIZE	= 774;
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
   3:  ! Macro Move To Home ;
   4:  ! Version 2.1 ;
   5:  !******************************** ;
   6:   ;
   7:  CALL GET_HOME    ;
   8:   ;
   9:J PR[1:@Home] 100% FINE    ;
  10:   ;
  11:  HOME I/O    ;
  12:   ;
/POS
/END
