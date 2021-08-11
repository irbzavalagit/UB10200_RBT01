/PROG  TD_POUNC
/ATTR
OWNER		= RIVIAN;
COMMENT		= "TD Pounce V1.0";
PROG_SIZE	= 1267;
CREATE		= DATE 21-07-09  TIME 07:32:28;
MODIFIED	= DATE 21-08-08  TIME 10:08:36;
FILE_NAME	= TD_POUNC;
VERSION		= 10;
LINE_COUNT	= 31;
MEMORY_SIZE	= 1515;
PROTECT		= READ_WRITE;
TCD:  STACK_SIZE	= 0,
      TASK_PRIORITY	= 50,
      TIME_SLICE	= 0,
      BUSY_LAMP_OFF	= 0,
      ABORT_REQUEST	= 0,
      PAUSE_REQUEST	= 0;
DEFAULT_GROUP	= 1,1,*,*,*;
CONTROL_CODE	= 00000000 00000000;
/APPL
/MN
   1:  !******************************** ;
   2:  ! RIVIAN AUTOMOTIVE ;
   3:  ! Robot: xxxxxxxx ;
   4:  !******************************** ;
   5:  ! Moves Home To Tipdress Pounce ;
   6:  ! Version 1.0 ;
   7:  !******************************** ;
   8:   ;
   9:  !Move To Tipdress Pounce ;
  10:  SET PATH(1) ;
  11:   ;
  12:  Rec Path Start    ;
  13:   ;
  14:  !Put Frame Description ;
  15:  UFRAME_NUM=19 ;
  16:  !Put Utool Description ;
  17:  UTOOL_NUM=1 ;
  18:  !Put Payload Description ;
  19:  PAYLOAD[1:SSW1] ;
  20:   ;
  21:  !Add Points From ;
  22:  !Home To Tipdress Pounce ;
  23:   ;
  24:J PR[1:@Home] 100% FINE    ;
  25:J P[1] 100% CNT40    ;
  26:J P[2] 100% CNT40    ;
  27:J P[3] 100% CNT40    ;
  28:J PR[174:TD_PounceG1] 80% FINE    ;
  29:   ;
  30:  AT POUNCE    ;
  31:   ;
/POS
P[1]{
   GP1:
	UF : 19, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1863.785  mm,	Y =  -504.841  mm,	Z =   853.696  mm,
	W =      .004 deg,	P =      .000 deg,	R =    -2.872 deg
   GP2:
	UF : 19, UT : 1,	
	J1=   -33.390  mm
};
P[2]{
   GP1:
	UF : 19, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   898.226  mm,	Y =  -481.197  mm,	Z =   787.958  mm,
	W =      .006 deg,	P =     -.000 deg,	R =    -1.934 deg
   GP2:
	UF : 19, UT : 1,	
	J1=   -42.161  mm
};
P[3]{
   GP1:
	UF : 19, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -120.256  mm,	Y =  -413.804  mm,	Z =   491.378  mm,
	W =      .003 deg,	P =     -.000 deg,	R =      .719 deg
   GP2:
	UF : 19, UT : 1,	
	J1=   -66.400  mm
};
/END
