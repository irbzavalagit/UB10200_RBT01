/PROG  CLSKP_G8
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "set skip cond g8";
PROG_SIZE	= 318;
CREATE		= DATE 08-10-17  TIME 22:36:02;
MODIFIED	= DATE 08-10-17  TIME 22:41:10;
FILE_NAME	= CLSKP_G7;
VERSION		= 0;
LINE_COUNT	= 6;
MEMORY_SIZE	= 666;
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
/MN
   1:  !Program CLSKP_g8  ;
   2:   ;
   3:  SKIP CONDITION $MISC[8].$DSTB_EXCESS=1    ;
   4:  END ;
   5:   ;
   6:  !End of CLSKP_g8 ;
/POS
/END