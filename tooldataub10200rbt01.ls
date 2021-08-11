/PROG  TOOLDATAUB10200RBT01
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "";
PROG_SIZE	= 724;
CREATE		= DATE 21-07-07  TIME 05:04:50;
MODIFIED	= DATE 21-07-07  TIME 05:04:50;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 29;
MEMORY_SIZE	= 980;
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
/MN
   1:  PR[16]=LPOS    ;
   2:  PR[16,1]=(-.4)    ;
   3:  PR[16,2]=(-1100.3)    ;
   4:  PR[16,3]=770.299    ;
   5:  PR[16,4]=180    ;
   6:  PR[16,5]=0    ;
   7:  PR[16,6]=(-90)    ;
   8:  UTOOL[1:SSW]=PR[16] ;
   9:  PR[16,1]=3500    ;
  10:  PR[16,2]=5820    ;
  11:  PR[16,3]=(-1176.5)    ;
  12:  PR[16,4]=0    ;
  13:  PR[16,5]=0    ;
  14:  PR[16,6]=(-90)    ;
  15:  UFRAME[1:UB10200_FXT01]=PR[16] ;
  16:  PR[16,1]=(-684.799)    ;
  17:  PR[16,2]=(-834.099)    ;
  18:  PR[16,3]=(-772.2)    ;
  19:  PR[16,4]=0    ;
  20:  PR[16,5]=0    ;
  21:  PR[16,6]=0    ;
  22:  UFRAME[19:TIPDRESS]=PR[16] ;
  23:  PR[16,1]=(-606.5)    ;
  24:  PR[16,2]=(-1058.19)    ;
  25:  PR[16,3]=(-782)    ;
  26:  PR[16,4]=0    ;
  27:  PR[16,5]=0    ;
  28:  PR[16,6]=0    ;
  29:  UFRAME[20:CAPCHANGE]=PR[16] ;
/POS
/END
