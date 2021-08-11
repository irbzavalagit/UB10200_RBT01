/PROG  _MASTERPOS
/ATTR
OWNER		= RIVIAN;
COMMENT		= "Move2 Master Pos";
PROG_SIZE	= 1722;
CREATE		= DATE 21-07-09  TIME 07:32:06;
MODIFIED	= DATE 21-08-01  TIME 01:01:44;
FILE_NAME	= _MASTERP;
VERSION		= 20;
LINE_COUNT	= 47;
MEMORY_SIZE	= 2034;
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
   5:  ! Moves To Master Position ;
   6:  ! Version 2.0 ;
   7:  !******************************** ;
   8:   ;
   9:  !Put Frame Description ;
  10:  UFRAME_NUM=0 ;
  11:  !Put Utool Description ;
  12:  UTOOL_NUM=1 ;
  13:  !Put Payload Description ;
  14:  PAYLOAD[1:SSW1] ;
  15:   ;
  16:  !-------------------------------- ;
  17:  !Use This Macro If Master Pos ;
  18:  !(0,0,0,0,0,0) ;
  19:  !Is Posible And Delete ;
  20:  !_Altmaster To Avoid Confusion ;
  21:  !-------------------------------- ;
  22:   ;
  23:  !Add Moves To Avoid Crashes ;
  24:  !To Master Position ;
  25:   ;
  26:J PR[1:@Home] 100% FINE    ;
  27:J P[1] 100% FINE    ;
  28:   ;
  29:  !Master Position axis 1,2,3 ;
  30:J PR[254:MasterPSN] 100% FINE    ;
  31:  PAUSE ;
  32:   ;
  33:   ;
  34:J P[2] 100% FINE    ;
  35:J P[4] 100% FINE    ;
  36:J P[3] 100% FINE    ;
  37:  PAUSE ;
  38:   ;
  39:  !Add Moves To Avoid Crashes ;
  40:  !To Home Position ;
  41:   ;
  42:J P[5] 100% FINE    ;
  43:J P[6] 100% FINE    ;
  44:J PR[1:@Home] 100% FINE    ;
  45:   ;
  46:  MOVE TO HOME    ;
  47:   ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 1,	
	J1=     0.000 deg,	J2=     0.000 deg,	J3=     0.000 deg,
	J4=     8.589 deg,	J5=  -108.097 deg,	J6=     1.816 deg
};
P[2]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   936.445  mm,	Y =   924.767  mm,	Z =   125.533  mm,
	W =    18.349 deg,	P =     8.021 deg,	R =    91.743 deg
};
P[3]{
   GP1:
	UF : 0, UT : 1,	
	J1=     -.000 deg,	J2=   -53.990 deg,	J3=     -.000 deg,
	J4=     0.000 deg,	J5=     0.000 deg,	J6=     0.000 deg
};
P[4]{
   GP1:
	UF : 0, UT : 1,	
	J1=      .000 deg,	J2=   -53.000 deg,	J3=     -.000 deg,
	J4=     2.757 deg,	J5=   -34.701 deg,	J6=      .583 deg
};
P[5]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1689.248  mm,	Y =  1058.936  mm,	Z =   241.800  mm,
	W =   -55.282 deg,	P =     3.237 deg,	R =    90.332 deg
};
P[6]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1223.673  mm,	Y =   959.540  mm,	Z =     2.437  mm,
	W =    -7.424 deg,	P =     6.730 deg,	R =    91.382 deg
};
/END
