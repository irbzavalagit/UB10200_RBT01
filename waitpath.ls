/PROG  WAITPATH	  Macro
/ATTR
OWNER		= RIVIAN;
COMMENT		= "Wait Path V2.0";
PROG_SIZE	= 526;
CREATE		= DATE 21-07-09  TIME 07:32:04;
MODIFIED	= DATE 21-07-09  TIME 07:32:04;
FILE_NAME	= WAITPATH;
VERSION		= 20;
LINE_COUNT	= 15;
MEMORY_SIZE	= 838;
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
   3:  ! Macro Wait Next Path ;
   4:  ! Version 2.0 ;
   5:  !******************************** ;
   6:   ;
   7:  ! Set Path Complete ;
   8:  DO[72:PathComplete]=ON ;
   9:   ;
  10:  ! Wait For Next Path ;
  11:  WAIT DI[72:ProceedPath]=ON    ;
  12:   ;
  13:  ! Set Wait Path Flag ;
  14:  F[10:WaitPathFlag]=(ON) ;
  15:   ;
/POS
/END
