/PROG  TW_SET01
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "Setup tw on gun1";
PROG_SIZE	= 450;
CREATE		= DATE 06-02-28  TIME 17:02:22;
MODIFIED	= DATE 06-02-28  TIME 17:02:46;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 10;
MEMORY_SIZE	= 790;
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
  SPOT : TRUE ; 
  SPOT Welding Equipment Number : 1 ;
/MN
   1:  !Program description ;
   2:  !  Setup wear measmt for  ;
   3:  !  specified gun number. ;
   4:   ;
   5:   ;
   6:  !Use the following call for ;
   7:  !fixture-based wear measurement ;
   8:  !Parm1: gun number ;
   9:  !CALL TW_SETUP( 1 ) ;
  10:  CALL TW_SETUP(1) ;
/POS
/END
