/PROG  CLSKP_G1
/ATTR
OWNER		= FANUC_RR;
COMMENT		= "set skip cond g1";
PROG_SIZE	= 282;
CREATE		= DATE 08-10-17  TIME 22:32:14;
MODIFIED	= DATE 08-10-17  TIME 22:32:48;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 6;
MEMORY_SIZE	= 662;
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
   1:  !Program CLSKP_g1  ;
   2:   ;
   3:  SKIP CONDITION $MISC[1].$DSTB_EXCESS=1    ;
   4:  END ;
   5:   ;
   6:  !End of CLSKP_g1  ;
/POS
/END
