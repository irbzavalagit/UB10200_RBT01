/PROG  S012SSW01
/ATTR
OWNER		= lancheng;
COMMENT		= "";
PROG_SIZE	= 6916;
CREATE		= DATE 21-07-07  TIME 05:04:38;
MODIFIED	= DATE 21-08-08  TIME 11:37:34;
FILE_NAME	= S012SSW0;
VERSION		= 0;
LINE_COUNT	= 102;
MEMORY_SIZE	= 7264;
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
   3:  ! ROBOT: UB10200_RBT01 ;
   4:  ! MODEL: RPV700 ;
   5:  ! ASSEMBLY: UB10200 ;
   6:  !******************************** ;
   7:   ;
   8:  WAIT NEXT PATH    ;
   9:  !Begin Process Path ;
  10:  SET PATH(100) ;
  11:   ;
  12:  ! UB10200_FXT01 ;
  13:  UFRAME_NUM=1 ;
  14:  ! SSW ;
  15:  UTOOL_NUM=1 ;
  16:  !SSW ;
  17:  PAYLOAD[1:SSW1] ;
  18:   ;
  19:   ;
  20:  ! Entering Fixture Zone1 ;
  21:  ENTER FIXT-ZONE(1) ;
  22:  ! Entering Fixture Zone2 ;
  23:  ENTER FIXT-ZONE(2) ;
  24:   ;
  25:J PR[2:@Pounce] 100% CNT100    ;
  26:J P[2] 100% CNT100    ;
  27:J P[3] 100% CNT30    ;
  28:J P[4] 100% CNT30    ;
  29:J P[5] 100% CNT30    ;
  30:J P[6] 100% CNT30    ;
  31:J P[7] 100% CNT30    ;
  32:J P[8] 100% CNT30    ;
  33:J P[9] 100% CNT30    ;
  34:  !Enter Zone 5 w/UB10200RBT02 ;
  35:  ENTER I-ZONE(5) ;
  36:J P[10] 100% CNT30    ;
  37:J P[11] 100% CNT30    ;
  38:  ! WELD 1,ID W_PT00045027_017 ;
  39:L P[12:W_PT00045027_017] 2000mm/sec CNT100
    :  SPOT[SD=6,P=15,t=5.3,S=207,ED=6]    ;
  40:J P[13] 100% CNT30    ;
  41:J P[14] 100% CNT30    ;
  42:  ! WELD 2,ID W_PT00045027_018 ;
  43:L P[15:W_PT00045027_018] 2000mm/sec CNT100
    :  SPOT[SD=6,P=15,t=5.3,S=207,ED=6]    ;
  44:J P[16] 100% CNT30    ;
  45:J P[17] 100% CNT30    ;
  46:  ! WELD 3,ID W_PT00045027_019 ;
  47:L P[18:W_PT00045027_019] 2000mm/sec CNT100
    :  SPOT[SD=6,P=15,t=5.3,S=207,ED=6]    ;
  48:J P[19] 100% CNT30    ;
  49:J P[20] 100% FINE    ;
  50:  !Exit Zone 5 w/UB10200RBT02 ;
  51:  EXIT I-ZONE(5) ;
  52:  ! WELD 4,ID W_PT00045027_020 ;
  53:L P[21:W_PT00045027_020] 2000mm/sec CNT100
    :  SPOT[SD=6,P=15,t=5.3,S=207,ED=6]    ;
  54:J P[22] 100% CNT30    ;
  55:J P[23] 100% CNT30    ;
  56:  ! WELD 5,ID W_PT00045027_021 ;
  57:L P[24:W_PT00045027_021] 2000mm/sec CNT100
    :  SPOT[SD=6,P=15,t=5.3,S=207,ED=6]    ;
  58:J P[25] 100% CNT30    ;
  59:J P[26] 100% CNT30    ;
  60:  ! WELD 6,ID W_PT00045027_022 ;
  61:L P[27:W_PT00045027_022] 2000mm/sec CNT100
    :  SPOT[SD=6,P=15,t=5.3,S=207,ED=6]    ;
  62:J P[28] 100% CNT30    ;
  63:J P[29] 100% CNT30    ;
  64:  ! WELD 7,ID W_PT00045027_023 ;
  65:L P[30:W_PT00045027_023] 2000mm/sec CNT100
    :  SPOT[SD=6,P=15,t=5.3,S=207,ED=6]    ;
  66:J P[31] 100% CNT30    ;
  67:J P[32] 100% CNT30    ;
  68:  ! WELD 8,ID W_PT00045027_024 ;
  69:L P[33:W_PT00045027_024] 2000mm/sec CNT100
    :  SPOT[SD=6,P=15,t=5.3,S=207,ED=6]    ;
  70:J P[34] 100% CNT30    ;
  71:J P[35] 100% CNT30    ;
  72:  ! WELD 9,ID W_PT00045027_025 ;
  73:L P[36:W_PT00045027_025] 2000mm/sec CNT100
    :  SPOT[SD=6,P=15,t=5.3,S=207,ED=6]    ;
  74:J P[37] 100% CNT30    ;
  75:J P[38] 100% CNT30    ;
  76:J P[39] 100% CNT30    ;
  77:J P[40] 100% CNT30    ;
  78:  ! WELD 10,ID W_PT00045027_026 ;
  79:L P[41:W_PT00045027_026] 2000mm/sec CNT100
    :  SPOT[SD=6,P=15,t=5.3,S=207,ED=6]    ;
  80:J P[42] 100% CNT30    ;
  81:J P[43] 100% CNT30    ;
  82:  ! WELD 11,ID W_PT00045027_027 ;
  83:L P[44:W_PT00045027_027] 2000mm/sec CNT100
    :  SPOT[SD=6,P=15,t=5.3,S=207,ED=6]    ;
  84:J P[45] 100% CNT30    ;
  85:J P[46] 100% CNT30    ;
  86:  ! WELD 12,ID W_PT00045027_028 ;
  87:L P[47:W_PT00045027_028] 2000mm/sec CNT100
    :  SPOT[SD=6,P=15,t=5.3,S=207,ED=6]    ;
  88:J P[48] 100% CNT30    ;
  89:J P[49] 100% CNT30    ;
  90:J P[50] 100% CNT30    ;
  91:J P[51] 100% CNT70    ;
  92:J P[52] 100% CNT100    ;
  93:J P[53:HOME POSITION] 100% FINE    ;
  94:   ;
  95:  ! Exiting Fixture Zone1 ;
  96:  EXIT FIXT-ZONE(1) ;
  97:  ! Exiting Fixture Zone2 ;
  98:  EXIT FIXT-ZONE(2) ;
  99:  !Clear Of Everything ;
 100:  WAIT NEXT PATH    ;
 101:  SET PATH(250) ;
 102:   ;
/POS
P[2]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  5947.414  mm,	Y = -1623.844  mm,	Z =  1403.576  mm,
	W =     0.000 deg,	P =     0.000 deg,	R =   127.808 deg
   GP2:
	UF : 1, UT : 1,	
	J1=  -100.000  mm
};
P[3]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  5950.696  mm,	Y = -1173.806  mm,	Z =  1403.576  mm,
	W =     -.000 deg,	P =     -.000 deg,	R =    95.800 deg
   GP2:
	UF : 1, UT : 1,	
	J1=  -100.000  mm
};
P[4]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  5950.113  mm,	Y = -1168.076  mm,	Z =  1078.576  mm,
	W =      .000 deg,	P =      .000 deg,	R =    95.800 deg
   GP2:
	UF : 1, UT : 1,	
	J1=  -100.000  mm
};
P[5]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  5945.173  mm,	Y = -1119.446  mm,	Z =   818.576  mm,
	W =     0.000 deg,	P =     0.000 deg,	R =    95.800 deg
   GP2:
	UF : 1, UT : 1,	
	J1=  -100.000  mm
};
P[6]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  5937.846  mm,	Y =  -969.627  mm,	Z =   828.017  mm,
	W =      .000 deg,	P =      .000 deg,	R =    92.800 deg
   GP2:
	UF : 1, UT : 1,	
	J1=  -136.000  mm
};
P[7]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  5927.075  mm,	Y =  -745.203  mm,	Z =   836.553  mm,
	W =     -.000 deg,	P =      .000 deg,	R =    92.800 deg
   GP2:
	UF : 1, UT : 1,	
	J1=  -136.000  mm
};
P[8]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  5957.343  mm,	Y =  -679.992  mm,	Z =   833.576  mm,
	W =     0.000 deg,	P =     0.000 deg,	R =    89.800 deg
   GP2:
	UF : 1, UT : 1,	
	J1=  -120.000  mm
};
P[9]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  5958.286  mm,	Y =  -409.994  mm,	Z =   813.576  mm,
	W =     0.000 deg,	P =     0.000 deg,	R =    89.800 deg
   GP2:
	UF : 1, UT : 1,	
	J1=  -120.000  mm
};
P[10]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  5958.844  mm,	Y =  -249.995  mm,	Z =   813.576  mm,
	W =     0.000 deg,	P =     0.000 deg,	R =    89.800 deg
   GP2:
	UF : 1, UT : 1,	
	J1=  -120.000  mm
};
P[11]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  5959.000  mm,	Y =   -80.000  mm,	Z =   833.576  mm,
	W =     0.000 deg,	P =     0.000 deg,	R =    90.500 deg
   GP2:
	UF : 1, UT : 1,	
	J1=  -120.000  mm
};
P[12:"W_PT00045027_017"]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  5959.838  mm,	Y =   -80.015  mm,	Z =   904.261  mm,
	W =      .000 deg,	P =      .003 deg,	R =    90.501 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   -37.442  mm
};
P[13]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  5959.500  mm,	Y =   -80.008  mm,	Z =   884.980  mm,
	W =      .000 deg,	P =      .000 deg,	R =    90.500 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   -50.000  mm
};
P[14]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  5955.181  mm,	Y =  -160.000  mm,	Z =   894.102  mm,
	W =     -.000 deg,	P =     -.000 deg,	R =    90.240 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   -50.000  mm
};
P[15:"W_PT00045027_018"]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  5962.332  mm,	Y =  -159.945  mm,	Z =   907.188  mm,
	W =     -.000 deg,	P =      .000 deg,	R =    90.000 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   -39.500  mm
};
P[16]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  5959.660  mm,	Y =  -168.641  mm,	Z =   894.181  mm,
	W =     -.000 deg,	P =      .000 deg,	R =    90.000 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   -50.000  mm
};
P[17]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  5959.979  mm,	Y =  -240.001  mm,	Z =   891.061  mm,
	W =     -.000 deg,	P =     -.000 deg,	R =    90.000 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   -50.000  mm
};
P[18:"W_PT00045027_019"]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  5962.780  mm,	Y =  -240.001  mm,	Z =   909.196  mm,
	W =      .000 deg,	P =      .001 deg,	R =    90.001 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   -49.818  mm
};
P[19]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  5959.979  mm,	Y =  -240.000  mm,	Z =   879.700  mm,
	W =     0.000 deg,	P =     0.000 deg,	R =    90.000 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   -50.000  mm
};
P[20]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  5959.979  mm,	Y =  -320.000  mm,	Z =   869.700  mm,
	W =     0.000 deg,	P =     0.000 deg,	R =    90.000 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   -50.000  mm
};
P[21:"W_PT00045027_020"]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  5962.288  mm,	Y =  -320.000  mm,	Z =   905.584  mm,
	W =      .000 deg,	P =      .000 deg,	R =    90.000 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   -38.171  mm
};
P[22]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  5959.979  mm,	Y =  -320.000  mm,	Z =   869.700  mm,
	W =     0.000 deg,	P =     0.000 deg,	R =    90.000 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   -50.000  mm
};
P[23]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  5959.979  mm,	Y =  -400.000  mm,	Z =   869.700  mm,
	W =     0.000 deg,	P =     0.000 deg,	R =    90.000 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   -50.000  mm
};
P[24:"W_PT00045027_021"]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  5961.598  mm,	Y =  -400.024  mm,	Z =   905.824  mm,
	W =      .000 deg,	P =      .001 deg,	R =    90.001 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   -50.000  mm
};
P[25]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  5959.979  mm,	Y =  -400.000  mm,	Z =   869.700  mm,
	W =     0.000 deg,	P =     0.000 deg,	R =    90.000 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   -50.000  mm
};
P[26]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  5959.979  mm,	Y =  -480.000  mm,	Z =   869.700  mm,
	W =     0.000 deg,	P =     0.000 deg,	R =    90.000 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   -50.000  mm
};
P[27:"W_PT00045027_022"]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  5961.821  mm,	Y =  -480.011  mm,	Z =   908.482  mm,
	W =      .000 deg,	P =      .001 deg,	R =    90.001 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   -38.257  mm
};
P[28]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  5959.979  mm,	Y =  -480.000  mm,	Z =   869.700  mm,
	W =     0.000 deg,	P =     0.000 deg,	R =    90.000 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   -50.000  mm
};
P[29]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  5959.979  mm,	Y =  -560.000  mm,	Z =   869.976  mm,
	W =     0.000 deg,	P =     0.000 deg,	R =    90.000 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   -50.000  mm
};
P[30:"W_PT00045027_023"]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  5960.700  mm,	Y =  -559.997  mm,	Z =   905.951  mm,
	W =      .000 deg,	P =      .000 deg,	R =    90.000 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   -47.857  mm
};
P[31]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  5959.979  mm,	Y =  -560.000  mm,	Z =   869.976  mm,
	W =     0.000 deg,	P =     0.000 deg,	R =    90.000 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   -50.000  mm
};
P[32]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  5959.979  mm,	Y =  -640.000  mm,	Z =   869.700  mm,
	W =     0.000 deg,	P =     0.000 deg,	R =    90.000 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   -50.000  mm
};
P[33:"W_PT00045027_024"]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  5963.332  mm,	Y =  -634.070  mm,	Z =   909.223  mm,
	W =      .000 deg,	P =      .000 deg,	R =    90.000 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   -50.000  mm
};
P[34]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  5959.979  mm,	Y =  -640.000  mm,	Z =   869.700  mm,
	W =     0.000 deg,	P =     0.000 deg,	R =    90.000 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   -50.000  mm
};
P[35]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  5959.979  mm,	Y =  -720.000  mm,	Z =   869.700  mm,
	W =     0.000 deg,	P =     0.000 deg,	R =    90.000 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   -50.000  mm
};
P[36:"W_PT00045027_025"]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  5960.700  mm,	Y =  -719.996  mm,	Z =   905.853  mm,
	W =      .000 deg,	P =      .000 deg,	R =    90.000 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   -63.286  mm
};
P[37]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  5957.186  mm,	Y =  -724.992  mm,	Z =   833.576  mm,
	W =     0.000 deg,	P =     0.000 deg,	R =    89.800 deg
   GP2:
	UF : 1, UT : 1,	
	J1=  -136.000  mm
};
P[38]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  5933.139  mm,	Y =  -776.042  mm,	Z =   834.211  mm,
	W =      .000 deg,	P =      .000 deg,	R =    91.837 deg
   GP2:
	UF : 1, UT : 1,	
	J1=  -136.000  mm
};
P[39]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  5936.937  mm,	Y =  -825.179  mm,	Z =   832.628  mm,
	W =      .000 deg,	P =      .000 deg,	R =    92.235 deg
   GP2:
	UF : 1, UT : 1,	
	J1=  -136.000  mm
};
P[40]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  5959.979  mm,	Y =  -800.000  mm,	Z =   869.700  mm,
	W =     0.000 deg,	P =     0.000 deg,	R =    90.400 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   -80.000  mm
};
P[41:"W_PT00045027_026"]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  5961.177  mm,	Y =  -799.994  mm,	Z =   907.493  mm,
	W =     -.000 deg,	P =      .000 deg,	R =    90.400 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   -62.643  mm
};
P[42]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  5959.979  mm,	Y =  -800.000  mm,	Z =   869.700  mm,
	W =     0.000 deg,	P =     0.000 deg,	R =    90.400 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   -50.000  mm
};
P[43]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  5959.979  mm,	Y =  -880.000  mm,	Z =   869.700  mm,
	W =     0.000 deg,	P =     0.000 deg,	R =    88.700 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   -50.000  mm
};
P[44:"W_PT00045027_027"]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  5962.382  mm,	Y =  -880.020  mm,	Z =   907.865  mm,
	W =      .000 deg,	P =      .001 deg,	R =    88.700 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   -55.143  mm
};
P[45]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  5959.979  mm,	Y =  -880.000  mm,	Z =   869.700  mm,
	W =     0.000 deg,	P =     0.000 deg,	R =    88.700 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   -50.000  mm
};
P[46]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  5959.979  mm,	Y =  -960.000  mm,	Z =   869.700  mm,
	W =     0.000 deg,	P =     0.000 deg,	R =    92.800 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   -50.000  mm
};
P[47:"W_PT00045027_028"]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  5961.656  mm,	Y =  -959.991  mm,	Z =   908.029  mm,
	W =     -.000 deg,	P =      .000 deg,	R =    92.800 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   -70.571  mm
};
P[48]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  5959.979  mm,	Y =  -960.000  mm,	Z =   809.700  mm,
	W =     0.000 deg,	P =     0.000 deg,	R =    92.800 deg
   GP2:
	UF : 1, UT : 1,	
	J1=  -133.000  mm
};
P[49]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  5945.172  mm,	Y = -1119.453  mm,	Z =   818.576  mm,
	W =     0.000 deg,	P =     0.000 deg,	R =    95.800 deg
   GP2:
	UF : 1, UT : 1,	
	J1=  -133.000  mm
};
P[50]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  5953.946  mm,	Y = -1205.797  mm,	Z =  1078.576  mm,
	W =      .000 deg,	P =     -.000 deg,	R =    95.800 deg
   GP2:
	UF : 1, UT : 1,	
	J1=  -136.000  mm
};
P[51]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  5958.150  mm,	Y = -1247.184  mm,	Z =  1403.577  mm,
	W =     -.000 deg,	P =     -.000 deg,	R =    95.800 deg
   GP2:
	UF : 1, UT : 1,	
	J1=  -100.000  mm
};
P[52]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  5947.414  mm,	Y = -1623.844  mm,	Z =  1403.576  mm,
	W =     0.000 deg,	P =     0.000 deg,	R =   127.808 deg
   GP2:
	UF : 1, UT : 1,	
	J1=  -100.000  mm
};
P[53:"HOME POSITION"]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  6967.593  mm,	Y = -1981.864  mm,	Z =  1346.317  mm,
	W =     0.000 deg,	P =     0.000 deg,	R =    90.000 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   -50.000  mm
};
/END
