/PROG  ATPOUNCE	  Macro
/ATTR
OWNER		= RIVIAN;
COMMENT		= "At Pounce V2.2";
PROG_SIZE	= 604;
CREATE		= DATE 21-07-09  TIME 07:31:12;
MODIFIED	= DATE 21-07-09  TIME 07:31:12;
FILE_NAME	= ATPOUNCE;
VERSION		= 22;
LINE_COUNT	= 22;
MEMORY_SIZE	= 904;
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
   3:  ! Macro At Pounce ;
   4:  ! Version 2.2 ;
   5:  !******************************** ;
   6:   ;
   7:  !Reset Status Ok ;
   8:  DO[469:StatusOK]=OFF ;
   9:   ;
  10:  CALL USERCLR    ;
  11:  MESSAGE[WAITING AT POUNCE] ;
  12:   ;
  13:  Rec Path Pause    ;
  14:   ;
  15:  WAIT NEXT PATH    ;
  16:   ;
  17:  R[120:Current Path]=GI[1:NextPath]    ;
  18:  IF R[120:Current Path]=251,CALL RET_HOME ;
  19:   ;
  20:  !Set Status Ok ;
  21:  DO[469:StatusOK]=ON ;
  22:   ;
/POS
/END
