/PROG  ALTMASTER
/ATTR
OWNER		= lancheng;
COMMENT		= "";
PROG_SIZE	= 1682;
CREATE		= DATE 21-07-07  TIME 05:04:04;
MODIFIED	= DATE 21-07-08  TIME 05:42:46;
FILE_NAME	= ALTMASTE;
VERSION		= 0;
LINE_COUNT	= 36;
MEMORY_SIZE	= 2038;
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
  SPOT : TRUE ; 
  SPOT Welding Equipment Number : 1 ;
/MN
   1:  !******************************** ;
   2:  ! RIVIAN AUTOMOTIVE ;
   3:  ! MACRO MOVE TO MAINTENANCE ;
   4:  !******************************** ;
   5:   ;
   6:  ! NO FRAME ;
   7:  UFRAME_NUM=0 ;
   8:  ! SSW ;
   9:  UTOOL_NUM=1 ;
  10:  !SSW ;
  11:  PAYLOAD[1:SSW1] ;
  12:   ;
  13:J PR[1:@Home] 100% FINE    ;
  14:J P[2] 100% CNT100    ;
  15:  !J1 Zero Position ;
  16:J P[3:J1 0] 50% FINE    ;
  17:  PAUSE ;
  18:   ;
  19:J P[4] 100% CNT100    ;
  20:  !J2 and J3 Zero Position ;
  21:J P[5:J2 J3 0] 50% FINE    ;
  22:  PAUSE ;
  23:   ;
  24:J P[6] 100% CNT30    ;
  25:J P[7] 100% CNT30    ;
  26:  !J4 and J5 and J6 Zero Position ;
  27:J P[8:ALTMastering] 50% FINE    ;
  28:  PAUSE ;
  29:   ;
  30:J P[9] 100% CNT100    ;
  31:J P[10] 100% CNT30    ;
  32:J P[11] 100% CNT70    ;
  33:J PR[1:@Home] 100% FINE    ;
  34:   ;
  35:  MOVE TO HOME    ;
  36:   ;
/POS
P[2]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1485.656  mm,	Y =   167.814  mm,	Z =   169.818  mm,
	W =     0.000 deg,	P =     0.000 deg,	R =    60.000 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   -50.000  mm
};
P[3:"J1 0"]{
   GP1:
	UF : 0, UT : 1,	
	J1=     0.000 deg,	J2=   -25.000 deg,	J3=     0.000 deg,
	J4=     0.000 deg,	J5=   -90.000 deg,	J6=    10.000 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   -50.000  mm
};
P[4]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1391.598  mm,	Y =   546.612  mm,	Z =   169.817  mm,
	W =     0.000 deg,	P =     0.000 deg,	R =    75.000 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   -50.000  mm
};
P[5:"J2 J3 0"]{
   GP1:
	UF : 0, UT : 1,	
	J1=   -40.000 deg,	J2=     0.000 deg,	J3=     0.000 deg,
	J4=     0.000 deg,	J5=   -90.000 deg,	J6=    20.000 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   -50.000  mm
};
P[6]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   803.046  mm,	Y =   341.437  mm,	Z =   430.605  mm,
	W =    -7.107 deg,	P =     7.053 deg,	R =    94.561 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   -50.000  mm
};
P[7]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X = -1012.534  mm,	Y = -1916.966  mm,	Z =   608.128  mm,
	W =   -65.769 deg,	P =     8.266 deg,	R =   -53.898 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   -49.999  mm
};
P[8:"ALTMastering"]{
   GP1:
	UF : 0, UT : 1,	
	J1=  -150.000 deg,	J2=   -50.000 deg,	J3=    10.000 deg,
	J4=     0.000 deg,	J5=     0.000 deg,	J6=     0.000 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   -50.000  mm
};
P[9]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X = -1012.534  mm,	Y = -1916.966  mm,	Z =   608.128  mm,
	W =   -65.769 deg,	P =     8.266 deg,	R =   -53.898 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   -49.999  mm
};
P[10]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   278.141  mm,	Y = -1147.594  mm,	Z =   169.818  mm,
	W =     0.000 deg,	P =     0.000 deg,	R =     0.000 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   -50.000  mm
};
P[11]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   903.209  mm,	Y = -1117.356  mm,	Z =   124.700  mm,
	W =     0.000 deg,	P =     0.000 deg,	R =     0.000 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   -50.000  mm
};
/END
