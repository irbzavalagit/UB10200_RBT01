/PROG  STYLE012
/ATTR
OWNER		= lancheng;
COMMENT		= "RPV Main Style";
PROG_SIZE	= 744;
CREATE		= DATE 21-07-07  TIME 05:04:42;
MODIFIED	= DATE 21-07-07  TIME 05:04:42;
FILE_NAME	= STYLE012;
VERSION		= 0;
LINE_COUNT	= 27;
MEMORY_SIZE	= 1056;
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
   1:  !******************************** ;
   2:  ! RIVIAN AUTOMOTIVE ;
   3:  ! Robot:UB10200_RBT01 ;
   4:  ! Model: RPV700 ;
   5:  ! Assembly: UB10200 ;
   6:  !******************************** ;
   7:   ;
   8:  ECHO STYLE(12) ;
   9:  ECHO OPTION    ;
  10:  MAINT_PROG[1]=MAINT_S230 ;
  11:   ;
  12:  ! Cap Wear Validation ;
  13:  CALL CW_VALID    ;
  14:   ;
  15:  CALL S012POUNC    ;
  16:   ;
  17:  CALL S012SSW01    ;
  18:   ;
  19:  ! Cap Wear Update ;
  20:  RUN CW_UPDAT ;
  21:   ;
  22:  MOVE TO HOME    ;
  23:   ;
  24:  ! Check Cap Wear Complete ;
  25:  CALL CW_CHECK    ;
  26:   ;
  27:   ;
/POS
/END
