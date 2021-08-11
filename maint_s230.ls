/PROG  MAINT_S230
/ATTR
OWNER		= RIVIAN;
COMMENT		= "Move2 Maint V2.2";
PROG_SIZE	= 1371;
CREATE		= DATE 21-07-09  TIME 07:31:44;
MODIFIED	= DATE 21-07-25  TIME 23:40:22;
FILE_NAME	= MAINT_S2;
VERSION		= 22;
LINE_COUNT	= 46;
MEMORY_SIZE	= 1711;
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
  12:   ;
  13:  CALL S230POUNC    ;
  14:   ;
  15:  SET PATH(230) ;
  16:   ;
  17:  !Put Frame Description ;
  18:  UFRAME_NUM=0 ;
  19:  !Put Utool Description ;
  20:  UTOOL_NUM=1 ;
  21:  !Put Payload Description ;
  22:  PAYLOAD[1:SSW1] ;
  23:   ;
  24:  CALL USERCLR    ;
  25:  MESSAGE[MOVING TO REPAIR] ;
  26:  !Program Path To Repair Here ;
  27:   ;
  28:L P[1] 2000mm/sec CNT100    ;
  29:   ;
  30:   ;
  31:J PR[230:MaintPsn] 100% FINE    ;
  32:   ;
  33:  WAIT NEXT PATH    ;
  34:  !Repair To Home Path ;
  35:  SET PATH(240) ;
  36:   ;
  37:  IF DO[470:FFRActive]=ON,CALL FFR_OPTN ;
  38:   ;
  39:  MESSAGE[RETURNING FROM REPAIR] ;
  40:  !Program Return Points Here ;
  41:   ;
  42:   ;
  43:   ;
  44:   ;
  45:  MOVE TO HOME    ;
  46:   ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1637.881  mm,	Y = -1006.401  mm,	Z =  -434.908  mm,
	W =     1.372 deg,	P =     4.863 deg,	R =     3.325 deg
};
/END
