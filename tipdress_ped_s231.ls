/PROG  TIPDRESS_PED_S231
/ATTR
OWNER		= RIVIAN;
COMMENT		= "TD Ped Gun1 V1.1";
PROG_SIZE	= 574;
CREATE		= DATE 21-07-09  TIME 07:32:30;
MODIFIED	= DATE 21-07-09  TIME 07:32:30;
FILE_NAME	= TIPDRESS;
VERSION		= 11;
LINE_COUNT	= 19;
MEMORY_SIZE	= 878;
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
   3:  !******************************** ;
   4:  ! Main Program Pedestal Tip Dress ;
   5:  ! Version 1.1 ;
   6:  !******************************** ;
   7:   ;
   8:  ECHO STYLE(231) ;
   9:  ECHO OPTION    ;
  10:   ;
  11:  !Tipdress Path ;
  12:  SET PATH(231) ;
  13:   ;
  14:  CALL TDPGUN1    ;
  15:   ;
  16:  MOVE TO HOME    ;
  17:   ;
  18:  HOME I/O    ;
  19:   ;
/POS
/END
