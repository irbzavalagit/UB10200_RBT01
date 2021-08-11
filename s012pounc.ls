/PROG  S012POUNC
/ATTR
OWNER		= lancheng;
COMMENT		= "";
PROG_SIZE	= 612;
CREATE		= DATE 21-07-07  TIME 05:04:34;
MODIFIED	= DATE 21-08-01  TIME 23:39:36;
FILE_NAME	= S012POUN;
VERSION		= 0;
LINE_COUNT	= 21;
MEMORY_SIZE	= 900;
PROTECT		= READ_WRITE;
TCD:  STACK_SIZE	= 0,
      TASK_PRIORITY	= 50,
      TIME_SLICE	= 0,
      BUSY_LAMP_OFF	= 0,
      ABORT_REQUEST	= 0,
      PAUSE_REQUEST	= 0;
DEFAULT_GROUP	= 1,*,*,*,*;
CONTROL_CODE	= 00000000 00000000;
/APPL
  SPOT : TRUE ; 
  SPOT Welding Equipment Number : 1 ;
/MN
   1:  !******************************** ;
   2:  ! RIVIAN AUTOMOTIVE ;
   3:  ! ROBOT: UB10200_RBT01 ;
   4:  ! MODEL: RPV700 ;
   5:  ! ASSEMBLY: UB10200 ;
   6:  !******************************** ;
   7:   ;
   8:  !Move To Pounce Path ;
   9:  SET PATH(1) ;
  10:  Rec Path Start    ;
  11:   ;
  12:  ! NO FRAME ;
  13:  UFRAME_NUM=0 ;
  14:  ! SSW ;
  15:  UTOOL_NUM=1 ;
  16:  !SSW ;
  17:  PAYLOAD[1:SSW1] ;
  18:   ;
  19:J PR[2:@Pounce] 100% FINE    ;
  20:   ;
  21:  AT POUNCE    ;
/POS
/END
