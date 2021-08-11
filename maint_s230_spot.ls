/PROG  MAINT_S230_SPOT
/ATTR
OWNER		= RIVIAN;
COMMENT		= "Move2 Maint V2.3";
PROG_SIZE	= 1200;
CREATE		= DATE 21-07-09  TIME 07:32:16;
MODIFIED	= DATE 21-08-01  TIME 23:36:36;
FILE_NAME	= MAINT_S2;
VERSION		= 23;
LINE_COUNT	= 47;
MEMORY_SIZE	= 1552;
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
   1:  !******************************** ;
   2:  ! RIVIAN AUTOMOTIVE ;
   3:  ! Robot: xxxxxxxx ;
   4:  !******************************** ;
   5:  ! Moves To Maintenance Pos ;
   6:  ! Version 2.3 ;
   7:  !******************************** ;
   8:   ;
   9:  ECHO STYLE(230) ;
  10:  ECHO OPTION    ;
  11:  !Move To Pounce Path ;
  12:  SET PATH(230) ;
  13:   ;
  14:  !Put Frame Description ;
  15:  UFRAME_NUM=0 ;
  16:  !Put Utool Description ;
  17:  UTOOL_NUM=1 ;
  18:  !Put Payload Description ;
  19:  PAYLOAD[1:SSW1] ;
  20:   ;
  21:  CALL USERCLR    ;
  22:  MESSAGE[MOVING TO REPAIR] ;
  23:  !Program Path To Repair Here ;
  24:   ;
  25:J PR[230:MaintPsn] 100% FINE    ;
  26:   ;
  27:  WAIT NEXT PATH    ;
  28:  !Repair To Home Path ;
  29:  SET PATH(240) ;
  30:   ;
  31:  R[79:List Menu Answer]=0    ;
  32:  DO[41:WaitOnInput]=ON ;
  33:  IF DO[470:FFRActive]=ON,CALL LISTMENU(17,79) ;
  34:  IF DO[470:FFRActive]=ON,CALL FFR_OPTN ;
  35:  DO[41:WaitOnInput]=OFF ;
  36:   ;
  37:  IF (R[79:List Menu Answer]=1),F[52:TD Request]=(ON) ;
  38:  IF (R[79:List Menu Answer]=2),F[51:CC Request]=(ON) ;
  39:   ;
  40:  MESSAGE[RETURNING FROM REPAIR] ;
  41:  !Program Return Points Here ;
  42:   ;
  43:  MOVE TO HOME    ;
  44:   ;
  45:  IF (R[79:List Menu Answer]=1),CALL TIPDRESS_S231 ;
  46:  IF (R[79:List Menu Answer]=2),CALL CAP_CHANGE_S233 ;
  47:   ;
/POS
/END
