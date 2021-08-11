/PROG  BGAPP6	  Macro
/ATTR
OWNER		= RIVIAN;
COMMENT		= "App6 Fdback V1.0";
PROG_SIZE	= 488;
CREATE		= DATE 21-07-09  TIME 07:31:20;
MODIFIED	= DATE 21-07-09  TIME 07:31:20;
FILE_NAME	= BGAPP6;
VERSION		= 10;
LINE_COUNT	= 10;
MEMORY_SIZE	= 820;
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
   3:  ! Application 6 Template ;
   4:  ! Used to send feedback bit to PL ;
   5:  ! DI/DO 577-640 <-> PLC ;
   6:  ! DI/DO 1700-1891 <-> DEVICE ;
   7:  ! Version 1.0 ;
   8:  !******************************** ;
   9:   ;
  10:   ;
/POS
/END
