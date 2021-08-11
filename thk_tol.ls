/PROG  THK_TOL	  Macro
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "SET THKNSS TOLER";
PROG_SIZE	= 604;
CREATE		= DATE 04-09-07  TIME 11:20:18;
MODIFIED	= DATE 04-09-07  TIME 11:20:18;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 12;
MEMORY_SIZE	= 936;
PROTECT		= READ_WRITE;
TCD:  STACK_SIZE	= 300,
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
   1:  !******************************** ;
   2:  !SET THICKNESS CHECK TOLERANCE FO ;
   3:  !NEXT (1) SPOT OR PRESS_MOTN. ;
   4:  ! ;
   5:  !AR[1]: Under Tolerance (>=0.0) ;
   6:  !AR[2]: Over Tolerance (>=0.0) ;
   7:  !AR[3]: Gun index (optional) ;
   8:  !     : 1=GunA, single or dual ;
   9:  !     : 2=GunB of dual ;
  10:  !     : 3=Both dual ;
  11:  !******************************** ;
  12:  CALL THK_KTOL(AR[1],AR[2],AR[3]) ;
/POS
/END
