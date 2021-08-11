/PROG  ECHOSTYL	  Macro
/ATTR
OWNER		= RIVIAN;
COMMENT		= "Echo Style V2.0";
PROG_SIZE	= 432;
CREATE		= DATE 21-07-09  TIME 07:31:28;
MODIFIED	= DATE 21-07-09  TIME 07:31:28;
FILE_NAME	= ECHOSTYL;
VERSION		= 20;
LINE_COUNT	= 10;
MEMORY_SIZE	= 764;
PROTECT		= READ_WRITE;
TCD:  STACK_SIZE	= 0,
      TASK_PRIORITY	= 50,
      TIME_SLICE	= 0,
      BUSY_LAMP_OFF	= 0,
      ABORT_REQUEST	= 0,
      PAUSE_REQUEST	= 0;
DEFAULT_GROUP	= *,*,*,*,*;
CONTROL_CODE	= 00001000 00000000;
/APPL
/MN
   1:  !******************************** ;
   2:  ! RIVIAN AUTOMOTIVE ;
   3:  ! Macro Echo Style ;
   4:  ! Version 2.0 ;
   5:  !******************************** ;
   6:   ;
   7:  ! Echo Style Bit To Plc ;
   8:   ;
   9:  GO[3:Style Echo]=AR[1] ;
  10:   ;
/POS
/END
