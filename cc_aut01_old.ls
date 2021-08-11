/PROG  CC_AUT01_OLD
/ATTR
OWNER		= RIVIAN;
COMMENT		= "CpChng Auto v1.1";
PROG_SIZE	= 8112;
CREATE		= DATE 21-08-04  TIME 17:19:58;
MODIFIED	= DATE 21-08-04  TIME 17:19:58;
FILE_NAME	= CC_AUT01;
VERSION		= 11;
LINE_COUNT	= 297;
MEMORY_SIZE	= 8692;
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
   5:  ! Auto Cap Change ;
   6:  ! Version 1.1 ;
   7:  !******************************** ;
   8:   ;
   9:  !Move To Auto Cap Change ;
  10:  SET PATH(233) ;
  11:   ;
  12:  ! Check for Water Saver Caploss ;
  13:  IF DI[776:Ws1CapLoss]=ON,JMP LBL[900] ;
  14:   ;
  15:  ! Initial Conditions Setup ;
  16:  CALL CC_INITSETP    ;
  17:   ;
  18:  !******************************** ;
  19:  ! Change Fixed Cap Section ;
  20:  !******************************** ;
  21:   ;
  22:  ! Reset Fix Cap Wear Value ;
  23:  CALL TWKRSFIX(1,10) ;
  24:  CALL TWKSTROK(0) ;
  25:  CALL TWKRSCLB(10) ;
  26:  R[24:CC Fix Retry]=0    ;
  27:   ;
  28:  LBL[10] ;
  29:  R[24:CC Fix Retry]=R[24:CC Fix Retry]+1    ;
  30:   ;
  31:  !----------------------------- ;
  32:  ! Set UTOOL To Fixed Cap ;
  33:  !----------------------------- ;
  34:  !Put Frame Description ;
  35:  UFRAME_NUM=20 ;
  36:  !Put Utool Description ;
  37:  UTOOL_NUM=31 ;
  38:  !Put Payload Description ;
  39:  PAYLOAD[1:SSW1] ;
  40:   ;
  41:  !----------------------------- ;
  42:  ! Typical Gun Opennings 50mm ;
  43:  !----------------------------- ;
  44:L PR[170:CC_PounceG1] 800mm/sec CNT25    ;
  45:   ;
  46:  ! Open CC Remover ;
  47:  CALL CC_OPENREM    ;
  48:   ;
  49:   ;
  50:L P[12] 2000mm/sec CNT25    ;
  51:  ! Cap Remove Position ;
  52:  ! Typical Gun Opennings 50mm ;
  53:  !----------------------------- ;
  54:L P[1:Fix_Remove] 400mm/sec FINE    ;
  55:   ;
  56:  ! Close CC Remover ;
  57:  CALL CC_CLOSEREM(3,1) ;
  58:   ;
  59:L P[13] 2000mm/sec CNT25    ;
  60:J P[14] 100% CNT50    ;
  61:   ;
  62:  ! Open CC Remover ;
  63:  CALL CC_OPENREM    ;
  64:   ;
  65:  ! No Cap Check Position ;
  66:L PR[171:CC_ChkFixCapG1] 250mm/sec FINE    ;
  67:   ;
  68:  R[26:CC Error]=66    ;
  69:  ! Check Cap Off ;
  70:  IF (R[24:CC Fix Retry]=1) THEN ;
  71:  WAIT DI[826:TC1 Lim Cap CHK]=OFF TIMEOUT,LBL[10] ;
  72:  ELSE ;
  73:  WAIT DI[826:TC1 Lim Cap CHK]=OFF TIMEOUT,LBL[900] ;
  74:  ENDIF ;
  75:   ;
  76:J P[16] 100% CNT100    ;
  77:L P[2] 800mm/sec CNT30    ;
  78:L P[15] 2000mm/sec CNT25    ;
  79:   ;
  80:  ! Fixed Cap Install Position ;
  81:L P[3:Fix_Install] 100mm/sec FINE    ;
  82:  PRESS_MOTN[SD=79,P=89,t=14.0] ;
  83:   ;
  84:  ! To this position open movable ;
  85:  ! 5 mm from plate ;
  86:  ! and the fix 3 mm from the plate ;
  87:  ! inside the magazine ;
  88:L P[4] 100mm/sec FINE    ;
  89:   ;
  90:  ! To this position move the robot ;
  91:  ! out of magazine with the same ;
  92:  ! gun oppening ;
  93:L P[5] 200mm/sec CNT25    ;
  94:   ;
  95:   ;
  96:  ! Cap Check Position ;
  97:L PR[171:CC_ChkFixCapG1] 250mm/sec FINE    ;
  98:   ;
  99:  R[26:CC Error]=67    ;
 100:  ! Check Cap On ;
 101:  WAIT DI[826:TC1 Lim Cap CHK]=ON TIMEOUT,LBL[900] ;
 102:   ;
 103:   ;
 104:L P[17] 2000mm/sec CNT50    ;
 105:   ;
 106:   ;
 107:  !******************************** ;
 108:  ! Change Movable Cap Section ;
 109:  !******************************** ;
 110:   ;
 111:  ! Reset Movable Cap Wear Value ;
 112:  CALL TWKRSMOV(1,10) ;
 113:  CALL TWKSTROK(0) ;
 114:  CALL TWKRSCLB(10) ;
 115:  R[25:CC Mov Retry]=0    ;
 116:   ;
 117:  LBL[20] ;
 118:  R[25:CC Mov Retry]=R[25:CC Mov Retry]+1    ;
 119:   ;
 120:  !----------------------------- ;
 121:  ! Set UTOOL To Movable Cap ;
 122:  !----------------------------- ;
 123:  !Put Frame Description ;
 124:  UFRAME_NUM=20 ;
 125:  !Put Utool Description ;
 126:  UTOOL_NUM=32 ;
 127:  !Put Payload Description ;
 128:  PAYLOAD[1:SSW1] ;
 129:   ;
 130:J P[18] 100% CNT100    ;
 131:  !----------------------------- ;
 132:  ! Typical Gun Opennings 50mm ;
 133:  !----------------------------- ;
 134:   ;
 135:  ! Open CC Remover ;
 136:  CALL CC_OPENREM    ;
 137:L P[19] 2000mm/sec CNT10    ;
 138:   ;
 139:L P[6:Mov_Remove] 400mm/sec FINE    ;
 140:   ;
 141:  ! Close CC Remover ;
 142:  CALL CC_CLOSEREM(3,2) ;
 143:   ;
 144:L P[20] 2000mm/sec CNT10    ;
 145:L P[21] 2000mm/sec CNT25    ;
 146:   ;
 147:  ! Open CC Remover ;
 148:  CALL CC_OPENREM    ;
 149:J P[22] 100% CNT25    ;
 150:  ! No Cap Check Position ;
 151:L PR[172:CC_ChkMovCapG1] 250mm/sec FINE    ;
 152:   ;
 153:  R[26:CC Error]=84    ;
 154:  ! Check Cap Off ;
 155:  IF (R[25:CC Mov Retry]=1) THEN ;
 156:  WAIT DI[826:TC1 Lim Cap CHK]=OFF TIMEOUT,LBL[20] ;
 157:  ELSE ;
 158:  WAIT DI[826:TC1 Lim Cap CHK]=OFF TIMEOUT,LBL[900] ;
 159:  ENDIF ;
 160:   ;
 161:   ;
 162:L P[7] 800mm/sec CNT25    ;
 163:   ;
 164:L P[23] 2000mm/sec CNT25    ;
 165:L P[8] 100mm/sec FINE    ;
 166:  ! Movable Cap Install Position ;
 167:L P[9:Mov_Install] 100mm/sec FINE    ;
 168:  PRESS_MOTN[SD=79,P=89,t=12.0] ;
 169:   ;
 170:  ! To this position open movable ;
 171:  ! 3 mm inside the magazine ;
 172:  ! and the fix 5 mm from the ;
 173:  ! pressure plate ;
 174:L P[10] 100mm/sec FINE    ;
 175:   ;
 176:  ! To this position move the robot ;
 177:  ! out of magazine with the same ;
 178:  ! gun oppening ;
 179:L P[11] 200mm/sec CNT25    ;
 180:   ;
 181:   ;
 182:  ! Cap Check Position ;
 183:L PR[172:CC_ChkMovCapG1] 250mm/sec FINE    ;
 184:   ;
 185:  R[26:CC Error]=85    ;
 186:  ! Check Cap On ;
 187:  WAIT DI[826:TC1 Lim Cap CHK]=ON TIMEOUT,LBL[900] ;
 188:   ;
 189:L P[24] 2000mm/sec CNT25    ;
 190:   ;
 191:   ;
 192:  !******************************** ;
 193:  ! Exit ;
 194:  !******************************** ;
 195:  LBL[99] ;
 196:   ;
 197:  !----------------------------- ;
 198:  ! Set UTOOL To Fixed Cap ;
 199:  !----------------------------- ;
 200:  !Put Frame Description ;
 201:  UFRAME_NUM=20 ;
 202:  !Put Utool Description ;
 203:  UTOOL_NUM=31 ;
 204:  !Put Payload Description ;
 205:  PAYLOAD[1:SSW1] ;
 206:   ;
 207:  ! Enable Spot Error recovery ;
 208:  $SVPRG_ENB=1 ;
 209:   ;
 210:  !-------------------------------- ;
 211:  ! Add Points From ;
 212:  ! Auto Cap Change To Td Pounce ;
 213:  !-------------------------------- ;
 214:J PR[170:CC_PounceG1] 80% CNT25    ;
 215:   ;
 216:  !Put Frame Description ;
 217:  UFRAME_NUM=19 ;
 218:  !Put Utool Description ;
 219:  UTOOL_NUM=1 ;
 220:  !Put Payload Description ;
 221:  PAYLOAD[1:SSW1] ;
 222:   ;
 223:   ;
 224:   ;
 225:   ;
 226:J PR[174:TD_PounceG1] 80% CNT25    ;
 227:   ;
 228:  ! Turn Water ON ;
 229:  CALL WATER_ON    ;
 230:  ! Sit Press New Caps ;
 231:  PRESS_MOTN[SD=28,P=92,t=0.0] ;
 232:  ! Reset Steppers ;
 233:  CALL CC_RSTSTEPG1    ;
 234:   ;
 235:  END ;
 236:   ;
 237:  !******************************** ;
 238:  ! Recovery Options ;
 239:  !******************************** ;
 240:  ! Manual Cap Change ;
 241:  LBL[900:Man_CC] ;
 242:   ;
 243:  !----------------------------- ;
 244:  ! Set UTOOL To Fixed Cap ;
 245:  !----------------------------- ;
 246:  !Put Frame Description ;
 247:  UFRAME_NUM=20 ;
 248:  !Put Utool Description ;
 249:  UTOOL_NUM=31 ;
 250:  !Put Payload Description ;
 251:  PAYLOAD[1:SSW1] ;
 252:   ;
 253:  !-------------------------------- ;
 254:  ! Add Points From ;
 255:  ! Cap Change Pounce ;
 256:  ! To Manual Cap Change Position ;
 257:  !-------------------------------- ;
 258:J PR[170:CC_PounceG1] 80% CNT25    ;
 259:   ;
 260:   ;
 261:   ;
 262:   ;
 263:J PR[173:CC_ManualPsnG1] 80% FINE    ;
 264:   ;
 265:  LBL[915] ;
 266:  !Open Gun Macro ;
 267:  CALL OPENSGG2    ;
 268:   ;
 269:   ;
 270:  GO[7:User Fault]=R[26:CC Error] ;
 271:  UALM[R[26]] ;
 272:  Op. Entry Menu(12) ;
 273:  IF R[80:Op. Menu Answer]=1,JMP LBL[916] ;
 274:  JMP LBL[915] ;
 275:   ;
 276:  LBL[916] ;
 277:  GO[7:User Fault]=0 ;
 278:   ;
 279:  !-------------------------------- ;
 280:  ! Add Points From Manual Cap ;
 281:  ! Change To Cap Change Pounce ;
 282:  !-------------------------------- ;
 283:  !Put Frame Description ;
 284:  UFRAME_NUM=19 ;
 285:  !Put Utool Description ;
 286:  UTOOL_NUM=1 ;
 287:  !Put Payload Description ;
 288:  PAYLOAD[1:SSW1] ;
 289:   ;
 290:   ;
 291:   ;
 292:   ;
 293:J PR[170:CC_PounceG1] 80% CNT25    ;
 294:   ;
 295:  JMP LBL[99] ;
 296:   ;
 297:   ;
/POS
P[1:"Fix_Remove"]{
   GP1:
	UF : 20, UT : 31,		CONFIG : 'N U T, 0, 0, 0',
	X =   -11.218  mm,	Y =     1.367  mm,	Z =     6.041  mm,
	W =      .000 deg,	P =      .000 deg,	R =    -3.001 deg
   GP2:
	UF : 20, UT : 31,	
	J1=  -100.000  mm
};
P[2]{
   GP1:
	UF : 20, UT : 31,		CONFIG : 'N U T, 0, 0, 0',
	X =   -83.185  mm,	Y =  -155.845  mm,	Z =   -37.479  mm,
	W =      .000 deg,	P =      .001 deg,	R =    -2.968 deg
   GP2:
	UF : 20, UT : 31,	
	J1=  -100.000  mm
};
P[3:"Fix_Install"]{
   GP1:
	UF : 20, UT : 31,		CONFIG : 'N U T, 0, 0, 0',
	X =   -41.981  mm,	Y =  -167.439  mm,	Z =     7.862  mm,
	W =     -.000 deg,	P =      .001 deg,	R =    -2.968 deg
   GP2:
	UF : 20, UT : 31,	
	J1=  -100.000  mm
};
P[4]{
   GP1:
	UF : 20, UT : 31,		CONFIG : 'N U T, 0, 0, 0',
	X =   -93.648  mm,	Y =  -164.764  mm,	Z =     7.862  mm,
	W =      .000 deg,	P =      .001 deg,	R =    -2.968 deg
   GP2:
	UF : 20, UT : 31,	
	J1=   -20.000  mm
};
P[5]{
   GP1:
	UF : 20, UT : 31,		CONFIG : 'N U T, 0, 0, 0',
	X =   -91.910  mm,	Y =  -131.208  mm,	Z =   -37.738  mm,
	W =      .000 deg,	P =      .001 deg,	R =    -2.968 deg
   GP2:
	UF : 20, UT : 31,	
	J1=  -100.000  mm
};
P[6:"Mov_Remove"]{
   GP1:
	UF : 20, UT : 32,		CONFIG : 'N U T, 0, 0, 0',
	X =   -11.568  mm,	Y =     2.004  mm,	Z =  -120.200  mm,
	W =      .000 deg,	P =      .003 deg,	R =    -2.967 deg
   GP2:
	UF : 20, UT : 32,	
	J1=  -100.000  mm
};
P[7]{
   GP1:
	UF : 20, UT : 32,		CONFIG : 'N U T, 0, 0, 0',
	X =  -122.337  mm,	Y =    -3.492  mm,	Z =   -73.408  mm,
	W =      .000 deg,	P =      .002 deg,	R =    -2.967 deg
   GP2:
	UF : 20, UT : 32,	
	J1=  -100.000  mm
};
P[8]{
   GP1:
	UF : 20, UT : 32,		CONFIG : 'N U T, 0, 0, 0',
	X =   -41.528  mm,	Y =    85.675  mm,	Z =   -45.200  mm,
	W =      .000 deg,	P =      .002 deg,	R =    -2.967 deg
   GP2:
	UF : 20, UT : 32,	
	J1=  -100.000  mm
};
P[9:"Mov_Install"]{
   GP1:
	UF : 20, UT : 32,		CONFIG : 'N U T, 0, 0, 0',
	X =   -41.526  mm,	Y =    85.675  mm,	Z =   -30.923  mm,
	W =      .000 deg,	P =      .002 deg,	R =    -2.967 deg
   GP2:
	UF : 20, UT : 32,	
	J1=   -20.000  mm
};
P[10]{
   GP1:
	UF : 20, UT : 32,		CONFIG : 'N U T, 0, 0, 0',
	X =   -88.726  mm,	Y =    88.121  mm,	Z =   -30.920  mm,
	W =      .000 deg,	P =      .002 deg,	R =    -2.967 deg
   GP2:
	UF : 20, UT : 32,	
	J1=   -20.000  mm
};
P[11]{
   GP1:
	UF : 20, UT : 32,		CONFIG : 'N U T, 0, 0, 0',
	X =   -99.148  mm,	Y =   -16.080  mm,	Z =  -149.401  mm,
	W =      .000 deg,	P =      .002 deg,	R =    -2.967 deg
   GP2:
	UF : 20, UT : 32,	
	J1=  -100.000  mm
};
P[12]{
   GP1:
	UF : 20, UT : 31,		CONFIG : 'N U T, 0, 0, 0',
	X =    -9.383  mm,	Y =     1.508  mm,	Z =   -41.221  mm,
	W =      .000 deg,	P =      .000 deg,	R =    -3.001 deg
   GP2:
	UF : 20, UT : 31,	
	J1=  -100.000  mm
};
P[13]{
   GP1:
	UF : 20, UT : 31,		CONFIG : 'N U T, 0, 0, 0',
	X =    -9.383  mm,	Y =     1.508  mm,	Z =   -41.221  mm,
	W =      .000 deg,	P =      .000 deg,	R =    -3.001 deg
   GP2:
	UF : 20, UT : 31,	
	J1=  -100.000  mm
};
P[14]{
   GP1:
	UF : 20, UT : 31,		CONFIG : 'N U T, 0, 0, 0',
	X =   -98.062  mm,	Y =     6.156  mm,	Z =   -41.220  mm,
	W =      .000 deg,	P =      .000 deg,	R =    -3.001 deg
   GP2:
	UF : 20, UT : 31,	
	J1=  -100.000  mm
};
P[15]{
   GP1:
	UF : 20, UT : 31,		CONFIG : 'N U T, 0, 0, 0',
	X =   -41.980  mm,	Y =  -167.439  mm,	Z =   -11.353  mm,
	W =     -.000 deg,	P =      .001 deg,	R =    -2.968 deg
   GP2:
	UF : 20, UT : 31,	
	J1=  -100.000  mm
};
P[16]{
   GP1:
	UF : 20, UT : 31,		CONFIG : 'N U T, 0, 0, 0',
	X =  -176.544  mm,	Y =   -84.687  mm,	Z =   -40.500  mm,
	W =      .000 deg,	P =      .001 deg,	R =    -3.001 deg
   GP2:
	UF : 20, UT : 31,	
	J1=  -100.000  mm
};
P[17]{
   GP1:
	UF : 20, UT : 31,		CONFIG : 'N U T, 0, 0, 0',
	X =  -143.786  mm,	Y =   -96.278  mm,	Z =   -40.137  mm,
	W =      .000 deg,	P =      .001 deg,	R =    -2.968 deg
   GP2:
	UF : 20, UT : 31,	
	J1=  -100.000  mm
};
P[18]{
   GP1:
	UF : 20, UT : 32,		CONFIG : 'N U T, 0, 0, 0',
	X =  -151.172  mm,	Y =    -6.974  mm,	Z =   -40.137  mm,
	W =     -.000 deg,	P =      .001 deg,	R =    -2.968 deg
   GP2:
	UF : 20, UT : 32,	
	J1=  -100.000  mm
};
P[19]{
   GP1:
	UF : 20, UT : 32,		CONFIG : 'N U T, 0, 0, 0',
	X =   -11.345  mm,	Y =     1.993  mm,	Z =   -52.243  mm,
	W =      .000 deg,	P =      .002 deg,	R =    -2.967 deg
   GP2:
	UF : 20, UT : 32,	
	J1=  -100.000  mm
};
P[20]{
   GP1:
	UF : 20, UT : 32,		CONFIG : 'N U T, 0, 0, 0',
	X =   -11.345  mm,	Y =     1.993  mm,	Z =   -52.243  mm,
	W =      .000 deg,	P =      .002 deg,	R =    -2.967 deg
   GP2:
	UF : 20, UT : 32,	
	J1=  -100.000  mm
};
P[21]{
   GP1:
	UF : 20, UT : 32,		CONFIG : 'N U T, 0, 0, 0',
	X =   -88.160  mm,	Y =     6.752  mm,	Z =   -59.009  mm,
	W =      .000 deg,	P =      .001 deg,	R =    -2.967 deg
   GP2:
	UF : 20, UT : 32,	
	J1=  -100.000  mm
};
P[22]{
   GP1:
	UF : 20, UT : 32,		CONFIG : 'N U T, 0, 0, 0',
	X =   -97.350  mm,	Y =   -23.089  mm,	Z =  -148.441  mm,
	W =      .000 deg,	P =      .002 deg,	R =    -2.967 deg
   GP2:
	UF : 20, UT : 32,	
	J1=  -100.000  mm
};
P[23]{
   GP1:
	UF : 20, UT : 32,		CONFIG : 'N U T, 0, 0, 0',
	X =   -88.808  mm,	Y =    87.695  mm,	Z =   -35.450  mm,
	W =      .000 deg,	P =      .002 deg,	R =    -2.967 deg
   GP2:
	UF : 20, UT : 32,	
	J1=  -100.000  mm
};
P[24]{
   GP1:
	UF : 20, UT : 32,		CONFIG : 'N U T, 0, 0, 0',
	X =   -99.148  mm,	Y =   -16.080  mm,	Z =  -149.400  mm,
	W =      .000 deg,	P =      .002 deg,	R =    -2.967 deg
   GP2:
	UF : 20, UT : 32,	
	J1=  -100.000  mm
};
/END
