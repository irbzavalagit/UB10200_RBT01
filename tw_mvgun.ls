/PROG  TW_MVGUN	  Macro
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "Move gun only";
PROG_SIZE	= 646;
CREATE		= DATE 03-04-14  TIME 15:27:12;
MODIFIED	= DATE 06-06-22  TIME 15:05:16;
FILE_NAME	= TWTMVGUN;
VERSION		= 0;
LINE_COUNT	= 19;
MEMORY_SIZE	= 1074;
PROTECT		= READ_WRITE;
TCD:  STACK_SIZE	= 0,
      TASK_PRIORITY	= 50,
      TIME_SLICE	= 0,
      BUSY_LAMP_OFF	= 0,
      ABORT_REQUEST	= 0,
      PAUSE_REQUEST	= 0;
DEFAULT_GROUP	= *,1,*,*,*;
CONTROL_CODE	= 00000000 00000000;
/APPL
  SPOT : TRUE ; 
  SPOT Welding Equipment Number : 1 ;
/MN
   1:  !Program description ;
   2:  !  Move gun to specified PR[] ;
   3:  !  Note:  The group mask for this ;
   4:  !         program is updated by ;
   5:  !         twkgnsel ;
   6:   ;
   7:   ;
   8:  !Input parameters ;
   9:  !AR[1]: Velocity label ;
  10:  !AR[2]: position register index ;
  11:  JMP LBL[AR[1]] ;
  12:   ;
  13:  LBL[1:Normal velocity] ;
  14:L PR[AR[2]] 2000mm/sec FINE    ;
  15:  END ;
  16:   ;
  17:  LBL[2:Fixture velocity] ;
  18:L PR[AR[2]] 30mm/sec FINE    ;
  19:  END ;
/POS
/END
