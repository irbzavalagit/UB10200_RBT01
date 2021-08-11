/PROG  TDRETHOM
/ATTR
OWNER		= RIVIAN;
COMMENT		= "TD Ret Home V2.2";
PROG_SIZE	= 1288;
CREATE		= DATE 21-07-09  TIME 07:32:26;
MODIFIED	= DATE 21-08-08  TIME 10:09:22;
FILE_NAME	= TDRETHOM;
VERSION		= 22;
LINE_COUNT	= 27;
MEMORY_SIZE	= 1552;
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
   5:  ! Moves From Tip Dress To Home ;
   6:  ! Version 2.2 ;
   7:  !******************************** ;
   8:   ;
   9:  !Tipdress Return Home Path ;
  10:  SET PATH(241) ;
  11:   ;
  12:  !Put Frame Description ;
  13:  UFRAME_NUM=0 ;
  14:  !Put Utool Description ;
  15:  UTOOL_NUM=1 ;
  16:  !Put Payload Description ;
  17:  PAYLOAD[1:SSW1] ;
  18:   ;
  19:  !Add Points From ;
  20:  !Tipdress Pounce To Home ;
  21:   ;
  22:J P[1] 100% FINE    ;
  23:J P[2] 100% CNT40    ;
  24:J P[3] 100% CNT40    ;
  25:J P[4] 100% CNT40    ;
  26:J PR[1:@Home] 100% FINE    ;
  27:   ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -783.503  mm,	Y =  -840.101  mm,	Z =  -821.498  mm,
	W =      .000 deg,	P =      .000 deg,	R =     8.933 deg
   GP2:
	UF : 0, UT : 1,	
	J1=  -100.000  mm
};
P[2]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -764.170  mm,	Y = -1250.611  mm,	Z =  -292.803  mm,
	W =      .003 deg,	P =     -.000 deg,	R =     5.186 deg
   GP2:
	UF : 0, UT : 1,	
	J1=  -100.000  mm
};
P[3]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   256.467  mm,	Y = -1238.474  mm,	Z =     3.777  mm,
	W =      .006 deg,	P =     -.000 deg,	R =     2.533 deg
   GP2:
	UF : 0, UT : 1,	
	J1=  -100.000  mm
};
P[4]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1220.934  mm,	Y = -1186.845  mm,	Z =    69.515  mm,
	W =      .004 deg,	P =      .000 deg,	R =     1.595 deg
   GP2:
	UF : 0, UT : 1,	
	J1=  -100.000  mm
};
/END
