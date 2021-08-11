/PROG  THK_SEV	  Macro
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "SET THKNSS SEVER";
PROG_SIZE	= 576;
CREATE		= DATE 04-09-07  TIME 11:23:10;
MODIFIED	= DATE 04-09-16  TIME 08:43:32;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 12;
MEMORY_SIZE	= 908;
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
   2:  !SET THICKNESS CHECK ALARM ;
   3:  !SEVERITY FOR ;
   4:  !NEXT (1) SPOT OR PRESS_MOTN. ;
   5:  ! ;
   6:  !AR[1]: Severity:1.Warn/2.Fault ;
   7:  !AR[2]: Gun index (optional) ;
   8:  !     : 1=GunA, single or dual ;
   9:  !     : 2=GunB of dual ;
  10:  !     : 3=Both dual ;
  11:  !******************************** ;
  12:  CALL THK_KSEV(AR[1],AR[2]) ;
/POS
/END
