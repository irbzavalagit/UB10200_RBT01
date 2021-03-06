/PROG  TD_WRCHKG1	  Macro
/ATTR
OWNER		= RIVIAN;
COMMENT		= "TD WrChk G1 V1.1";
PROG_SIZE	= 4124;
CREATE		= DATE 21-07-09  TIME 07:32:56;
MODIFIED	= DATE 21-07-09  TIME 07:32:56;
FILE_NAME	= CHECK_TD;
VERSION		= 11;
LINE_COUNT	= 180;
MEMORY_SIZE	= 4644;
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
   4:  ! Aplication # 1 ;
   5:  ! Tip Dress Wear Check ;
   6:  ! For Gun 1 ;
   7:  ! Version 1.1 ;
   8:  !******************************** ;
   9:   ;
  10:  DO[763:TD Motor ON]=PULSE,1.0sec ;
  11:   ;
  12:  IF (DI[34:DryCycle Mode]=ON AND $SPOTCONFIG.$STROKE_ENBL=0),JMP LBL[999] ;
  13:  ! Tip Wear Update ;
  14:  ! For Calibration Plate ;
  15:  ! Call TW_UPDAT(1,0) Instead ;
  16:  ! Call WR_UPDAT(1,0) ;
  17:  CALL TW_UPDAT(1,0) ;
  18:   ;
  19:  ! Save Current Tip Wear ;
  20:  ! For Gun 2 Change ;
  21:  ! $SGGUN1 To $SGGUN2 ;
  22:  R[33:Current Tip Wear]=($SGGUN1.$SETUP.$WRDWN_TIP+$SGGUN1.$SETUP.$WRDWN_RBT) ;
  23:   ;
  24:  ! Dry Cycle Mode ;
  25:  IF DI[34:DryCycle Mode]=ON,JMP LBL[999] ;
  26:   ;
  27:  ! Calculate Difference Between ;
  28:  ! Before and After TD as Result ;
  29:  R[34:Tip Dress Wear]=R[33:Current Tip Wear]-R[32:Origin Tip Wear]    ;
  30:   ;
  31:  ! Check For Tip Increase Of Dress ;
  32:  IF R[32:Origin Tip Wear]<=R[33:Current Tip Wear],JMP LBL[10] ;
  33:   ;
  34:  ! Retry Logic ;
  35:  IF (R[31:TD Retry Count]=1),F[31:TD Retry]=(ON) ;
  36:   ;
  37:  ! Check TD Retry Counter ;
  38:  IF R[31:TD Retry Count]=1,JMP LBL[999] ;
  39:  JMP LBL[980] ;
  40:   ;
  41:  LBL[10] ;
  42:  ! Setup Required Cut ;
  43:  R[35:Required TD Cut]=(.16) ;
  44:   ;
  45:  IF (F[49:Caps Are Changed]=ON OR R[31:TD Retry Count]>1),JMP LBL[20] ;
  46:   ;
  47:  ! Checks Pressure Schedule ;
  48:  ! Pressure in Kgf ;
  49:  ! Sets Pressure Limits ;
  50:  R[44:Lower Limit]=R[35:Required TD Cut]-.04    ;
  51:  R[45:Upper Limit]=R[35:Required TD Cut]+.04    ;
  52:  R[46:Pressure]=$SGSCH1[90].$WELD_PRESS ;
  53:  ! Set Incrementals +- 10 Lbs ;
  54:  IF (R[34:Tip Dress Wear]<=R[44:Lower Limit]),R[46:Pressure]=(R[46:Pressure]+4.536) ;
  55:  IF (R[34:Tip Dress Wear]>=R[45:Upper Limit]),R[46:Pressure]=(R[46:Pressure]-4.536) ;
  56:  ! Lower Pressure Limit 310 Lbs ;
  57:  IF (R[46:Pressure]<140.6),JMP LBL[981] ;
  58:  IF (R[46:Pressure]<=140.6),R[46:Pressure]=(140.613) ;
  59:  ! High Pressure Limit 410 Lbs ;
  60:  IF (R[46:Pressure]>186),JMP LBL[982] ;
  61:  IF (R[46:Pressure]>=186),R[46:Pressure]=(185.973) ;
  62:  ! Changes Pressure Schedule ;
  63:  $SGSCH1[90].$WELD_PRESS=R[46:Pressure] ;
  64:   ;
  65:  LBL[20] ;
  66:  IF R[34:Tip Dress Wear]>=R[35:Required TD Cut],JMP LBL[900] ;
  67:   ;
  68:  ! Retry Logic ;
  69:  IF (R[31:TD Retry Count]=1),F[31:TD Retry]=(ON) ;
  70:   ;
  71:  ! Check TD Retry Counter ;
  72:  IF R[31:TD Retry Count]=1,JMP LBL[999] ;
  73:  JMP LBL[983] ;
  74:   ;
  75:  LBL[900] ;
  76:  ! Weld Resistance Check ;
  77:  SPOT[SD=43,P=93,t=0.0,S=251,ED=43] ;
  78:   ;
  79:  ! Reset New Caps ;
  80:  F[49:Caps Are Changed]=(OFF) ;
  81:   ;
  82:  IF DI[701:Minor alarm     ]=ON,JMP LBL[999] ;
  83:   ;
  84:  ! Retry Logic ;
  85:  IF (R[31:TD Retry Count]=1),F[31:TD Retry]=(ON) ;
  86:   ;
  87:  ! Check TD Retry Counter ;
  88:  IF R[31:TD Retry Count]=1,JMP LBL[999] ;
  89:  JMP LBL[984] ;
  90:   ;
  91:  LBL[999:END] ;
  92:   ;
  93:  !Tip Dress Motor OFF ;
  94:  CALL TD_MOTOR_OFF    ;
  95:   ;
  96:  END ;
  97:   ;
  98:  !******************************** ;
  99:  ! Fault Section ;
 100:  !******************************** ;
 101:  LBL[980:WEAR INCREASED] ;
 102:  CALL USERCLR    ;
 103:  MESSAGE[...] ;
 104:  MESSAGE[...] ;
 105:  MESSAGE[TIP DRESS WEAR] ;
 106:  MESSAGE[INCREASED AFTER] ;
 107:  MESSAGE[TIP DRESS] ;
 108:  MESSAGE[CHECK TD CUTTER] ;
 109:  MESSAGE[OR RECALIB GUN/PRESSURE] ;
 110:  CALL USERPAGE    ;
 111:  GO[6:Error Codes]=80 ;
 112:  UALM[80] ;
 113:  GO[6:Error Codes]=0 ;
 114:  JMP LBL[999] ;
 115:   ;
 116:   ;
 117:  LBL[981:MIN PRESSURE] ;
 118:  CALL USERCLR    ;
 119:  MESSAGE[...] ;
 120:  MESSAGE[...] ;
 121:  MESSAGE[TIP DRESS PRESSURE] ;
 122:  MESSAGE[IS AT MINIMUM LIMIT] ;
 123:  MESSAGE[...] ;
 124:  MESSAGE[CHECK TD CUTTER] ;
 125:  MESSAGE[OR RECALIB GUN/PRESSURE] ;
 126:  CALL USERPAGE    ;
 127:  GO[6:Error Codes]=81 ;
 128:  UALM[81] ;
 129:  GO[6:Error Codes]=0 ;
 130:  JMP LBL[999] ;
 131:   ;
 132:   ;
 133:  LBL[982:MAX PRESSURE] ;
 134:  CALL USERCLR    ;
 135:  MESSAGE[...] ;
 136:  MESSAGE[...] ;
 137:  MESSAGE[TIP DRESS PRESSURE] ;
 138:  MESSAGE[IS AT MAXIMUM LIMIT] ;
 139:  MESSAGE[...] ;
 140:  MESSAGE[CHECK TD CUTTER] ;
 141:  MESSAGE[OR RECALIB GUN/PRESSURE] ;
 142:  CALL USERPAGE    ;
 143:  GO[6:Error Codes]=82 ;
 144:  UALM[82] ;
 145:  GO[6:Error Codes]=0 ;
 146:  JMP LBL[999] ;
 147:   ;
 148:   ;
 149:  LBL[983:WEAR ERROR] ;
 150:  CALL USERCLR    ;
 151:  MESSAGE[...] ;
 152:  MESSAGE[...] ;
 153:  MESSAGE[TIP DRESS WEAR] ;
 154:  MESSAGE[IS LOWER THAN] ;
 155:  MESSAGE[THE MINIMUM CUT] ;
 156:  MESSAGE[CHECK TD CUTTER] ;
 157:  MESSAGE[OR RECALIB GUN/PRESSURE] ;
 158:  CALL USERPAGE    ;
 159:  GO[6:Error Codes]=52 ;
 160:  UALM[52] ;
 161:  GO[6:Error Codes]=0 ;
 162:  JMP LBL[999] ;
 163:   ;
 164:   ;
 165:  LBL[984:WELD RES] ;
 166:  CALL USERCLR    ;
 167:  MESSAGE[...] ;
 168:  MESSAGE[...] ;
 169:  MESSAGE[TIP DRESS WELD] ;
 170:  MESSAGE[RESISTANCE FAULT] ;
 171:  MESSAGE[...] ;
 172:  MESSAGE[CHECK TD CUTTER] ;
 173:  MESSAGE[OR RECALIB GUN/PRESSURE] ;
 174:  CALL USERPAGE    ;
 175:  GO[6:Error Codes]=83 ;
 176:  UALM[83] ;
 177:  GO[6:Error Codes]=0 ;
 178:  JMP LBL[999] ;
 179:   ;
 180:   ;
/POS
/END
