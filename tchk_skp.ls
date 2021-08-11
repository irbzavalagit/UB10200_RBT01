/PROG  TCHK_SKP	  Macro
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "Skip thknss chk";
PROG_SIZE	= 598;
CREATE		= DATE 04-09-16  TIME 18:47:26;
MODIFIED	= DATE 04-09-22  TIME 18:14:34;
FILE_NAME	= THK_VAL;
VERSION		= 0;
LINE_COUNT	= 11;
MEMORY_SIZE	= 934;
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
   2:  !SKIP THICKNESS VALU (TARGET) FOR ;
   3:  !NEXT (1) SPOT OR PRESS_MOTN. ;
   4:  !Use this macro when check mode ;
   5:  !== ALL. ;
   6:  !AR[1]: Gun index (optional) ;
   7:  !     : 1=GunA, single or dual ;
   8:  !     : 2=GunB of dual ;
   9:  !     : 3=Both dual ;
  10:  !******************************** ;
  11:  CALL TCHKKSKP(AR[1]) ;
/POS
/END
