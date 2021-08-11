/PROG  CC_POUNC_OLD
/ATTR
OWNER		= RIVIAN;
COMMENT		= "TD Pounce V1.0";
PROG_SIZE	= 1493;
CREATE		= DATE 21-08-04  TIME 17:20:20;
MODIFIED	= DATE 21-08-04  TIME 17:20:20;
FILE_NAME	= CC_POUNC;
VERSION		= 10;
LINE_COUNT	= 37;
MEMORY_SIZE	= 1845;
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
   5:  ! Moves Home To Cap Change Pounce ;
   6:  ! Version 1.0 ;
   7:  !******************************** ;
   8:   ;
   9:  !Move To Cap Change Pounce ;
  10:  SET PATH(1) ;
  11:   ;
  12:  Rec Path Start    ;
  13:   ;
  14:  !----------------------------- ;
  15:  ! Set UTOOL To Fixed Cap ;
  16:  !----------------------------- ;
  17:  !Put Frame Description ;
  18:  UFRAME_NUM=20 ;
  19:  !Put Utool Description ;
  20:  UTOOL_NUM=31 ;
  21:  !Put Payload Description ;
  22:  PAYLOAD[1:SSW1] ;
  23:   ;
  24:  !Add Points From ;
  25:  !Home To Cap Change Pounce ;
  26:J PR[1:@Home] 100% FINE    ;
  27:J P[1] 100% CNT30    ;
  28:   ;
  29:J P[2] 100% CNT30    ;
  30:J P[3] 100% CNT50    ;
  31:  !----------------------------- ;
  32:  ! Typical Gun Openning 50mm ;
  33:  !----------------------------- ;
  34:J PR[170:CC_PounceG1] 80% FINE    ;
  35:   ;
  36:  AT POUNCE    ;
  37:   ;
/POS
P[1]{
   GP1:
	UF : 20, UT : 31,		CONFIG : 'N U T, 0, 0, 0',
	X =  1746.834  mm,	Y =  -185.520  mm,	Z =   931.776  mm,
	W =     -.000 deg,	P =     -.000 deg,	R =      .000 deg
   GP2:
	UF : 20, UT : 31,	
	J1=  -130.224  mm
};
P[2]{
   GP1:
	UF : 20, UT : 31,		CONFIG : 'N U T, 0, 0, 0',
	X =   975.634  mm,	Y =  -185.520  mm,	Z =   931.776  mm,
	W =     -.000 deg,	P =     -.000 deg,	R =      .000 deg
   GP2:
	UF : 20, UT : 31,	
	J1=  -130.224  mm
};
P[3]{
   GP1:
	UF : 20, UT : 31,		CONFIG : 'N U T, 0, 0, 0',
	X =     -.367  mm,	Y =  -185.519  mm,	Z =   763.776  mm,
	W =     -.000 deg,	P =      .000 deg,	R =      .000 deg
   GP2:
	UF : 20, UT : 31,	
	J1=  -130.224  mm
};
/END
