/PROG  CAP_CHANGE_S233
/ATTR
OWNER		= RIVIAN;
COMMENT		= "Cap Change V1.1";
PROG_SIZE	= 710;
CREATE		= DATE 21-07-09  TIME 07:32:06;
MODIFIED	= DATE 21-07-09  TIME 07:32:06;
FILE_NAME	= CAP_CHAN;
VERSION		= 11;
LINE_COUNT	= 25;
MEMORY_SIZE	= 1014;
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
/MN
   1:  !******************************** ;
   2:  ! RIVIAN AUTOMOTIVE ;
   3:  ! Robot: xxxxxxxx ;
   4:  !******************************** ;
   5:  ! Main Prog Cap Change Auto/Man ;
   6:  ! Version 1.1 ;
   7:  !******************************** ;
   8:   ;
   9:  ECHO STYLE(233) ;
  10:  ECHO OPTION    ;
  11:   ;
  12:  CALL CC_POUNC    ;
  13:   ;
  14:  !If Path=232 Manual Cap Change ;
  15:  !If Path=233 Auto Cap Changer ;
  16:  CALL CC_SELCT    ;
  17:   ;
  18:  WAIT NEXT PATH    ;
  19:   ;
  20:  CALL TD_GUN1    ;
  21:   ;
  22:  CALL TDRETHOM    ;
  23:   ;
  24:  MOVE TO HOME    ;
  25:   ;
/POS
/END
