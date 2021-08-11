/PROG  HMIOCSTM	  Macro
/ATTR
OWNER		= RIVIAN;
COMMENT		= "Cstm Hm I-O V2.0";
PROG_SIZE	= 434;
CREATE		= DATE 21-07-09  TIME 07:31:42;
MODIFIED	= DATE 21-07-09  TIME 07:31:42;
FILE_NAME	= HMIOCSTM;
VERSION		= 20;
LINE_COUNT	= 9;
MEMORY_SIZE	= 770;
PROTECT		= READ_WRITE;
TCD:  STACK_SIZE	= 0,
      TASK_PRIORITY	= 60,
      TIME_SLICE	= 0,
      BUSY_LAMP_OFF	= 1,
      ABORT_REQUEST	= 7,
      PAUSE_REQUEST	= 3;
DEFAULT_GROUP	= *,*,*,*,*;
CONTROL_CODE	= 00001000 00000000;
/APPL
/MN
   1:  !******************************** ;
   2:  ! RIVIAN AUTOMOTIVE ;
   3:  ! Set Custom Home I-O At Home ;
   4:  ! Version 2.0 ;
   5:  !******************************** ;
   6:   ;
   7:  !Add Any I/O Definied By User ;
   8:   ;
   9:   ;
/POS
/END
