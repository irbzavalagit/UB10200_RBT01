/PROG  EXITFIXT	  Macro
/ATTR
OWNER		= RIVIAN;
COMMENT		= "Exit Fixt V2.1";
PROG_SIZE	= 3210;
CREATE		= DATE 21-07-09  TIME 07:31:32;
MODIFIED	= DATE 21-07-09  TIME 07:31:32;
FILE_NAME	= EXITFIXT;
VERSION		= 21;
LINE_COUNT	= 165;
MEMORY_SIZE	= 3834;
PROTECT		= READ_WRITE;
TCD:  STACK_SIZE	= 0,
      TASK_PRIORITY	= 50,
      TIME_SLICE	= 0,
      BUSY_LAMP_OFF	= 0,
      ABORT_REQUEST	= 0,
      PAUSE_REQUEST	= 0;
DEFAULT_GROUP	= *,*,*,*,*;
CONTROL_CODE	= 00001000 00000000;
/APPL
/MN
   1:  !******************************** ;
   2:  ! RIVIAN AUTOMOTIVE ;
   3:  ! Macro Exit Fixture ;
   4:  ! Version 2.1 ;
   5:  !******************************** ;
   6:   ;
   7:  LBL[1:BEGIN] ;
   8:  R[122:Fixture Selected]=AR[1]    ;
   9:   ;
  10:  SELECT R[122:Fixture Selected]=1,JMP LBL[10] ;
  11:         =2,JMP LBL[20] ;
  12:         =3,JMP LBL[30] ;
  13:         =4,JMP LBL[40] ;
  14:         =5,JMP LBL[50] ;
  15:         =6,JMP LBL[60] ;
  16:         =7,JMP LBL[70] ;
  17:         =8,JMP LBL[80] ;
  18:         =9,JMP LBL[90] ;
  19:         =10,JMP LBL[100] ;
  20:         =11,JMP LBL[110] ;
  21:         =12,JMP LBL[120] ;
  22:         =13,JMP LBL[130] ;
  23:         =14,JMP LBL[140] ;
  24:         =15,JMP LBL[150] ;
  25:         =16,JMP LBL[160] ;
  26:         ELSE,JMP LBL[980] ;
  27:  END ;
  28:   ;
  29:   ;
  30:  LBL[10:Fixt1] ;
  31:  ! Set Clear Of Fixt 1 Output ;
  32:  DO[121:ClrFixture01]=ON ;
  33:  CALL USERCLR    ;
  34:  MESSAGE[ROBOT CLEAR FIXT 1] ;
  35:  JMP LBL[999] ;
  36:   ;
  37:   ;
  38:  LBL[20:Fixt2] ;
  39:  ! Set Clear Of Fixt 2 Output ;
  40:  DO[122:ClrFixture02]=ON ;
  41:  CALL USERCLR    ;
  42:  MESSAGE[ROBOT CLEAR FIXT 2] ;
  43:  JMP LBL[999] ;
  44:   ;
  45:   ;
  46:  LBL[30:Fixt3] ;
  47:  ! Set Clear Of Fixt 3 Output ;
  48:  DO[123:ClrFixture03]=ON ;
  49:  CALL USERCLR    ;
  50:  MESSAGE[ROBOT CLEAR FIXT 3] ;
  51:  JMP LBL[999] ;
  52:   ;
  53:   ;
  54:  LBL[40:Fixt4] ;
  55:  ! Set Clear Of Fixt 4 Output ;
  56:  DO[124:ClrFixture04]=ON ;
  57:  CALL USERCLR    ;
  58:  MESSAGE[ROBOT CLEAR FIXT 4] ;
  59:  JMP LBL[999] ;
  60:   ;
  61:   ;
  62:  LBL[50:Fixt5] ;
  63:  ! Set Clear Of Fixt 5 Output ;
  64:  DO[125:ClrFixture05]=ON ;
  65:  CALL USERCLR    ;
  66:  MESSAGE[ROBOT CLEAR FIXT 5] ;
  67:  JMP LBL[999] ;
  68:   ;
  69:   ;
  70:  LBL[60:Fixt6] ;
  71:  ! Set Clear Of Fixt 6 Output ;
  72:  DO[126:ClrFixture06]=ON ;
  73:  CALL USERCLR    ;
  74:  MESSAGE[ROBOT CLEAR FIXT 6] ;
  75:  JMP LBL[999] ;
  76:   ;
  77:   ;
  78:  LBL[70:Fixt7] ;
  79:  ! Set Clear Of Fixt 7 Output ;
  80:  DO[127:ClrFixture07]=ON ;
  81:  CALL USERCLR    ;
  82:  MESSAGE[ROBOT CLEAR FIXT 7] ;
  83:  JMP LBL[999] ;
  84:   ;
  85:   ;
  86:  LBL[80:Fixt8] ;
  87:  ! Set Clear Of Fixt 8 Output ;
  88:  DO[128:ClrFixture08]=ON ;
  89:  CALL USERCLR    ;
  90:  MESSAGE[ROBOT CLEAR FIXT 8] ;
  91:  JMP LBL[999] ;
  92:   ;
  93:   ;
  94:  LBL[90:Fixt9] ;
  95:  ! Set Clear Of Fixt 9 Output ;
  96:  DO[129:ClrFixture09]=ON ;
  97:  CALL USERCLR    ;
  98:  MESSAGE[ROBOT CLEAR FIXT 9] ;
  99:  JMP LBL[999] ;
 100:   ;
 101:   ;
 102:  LBL[100:Fixt10] ;
 103:  ! Set Clear Of Fixt 10 Output ;
 104:  DO[130:ClrFixture10]=ON ;
 105:  CALL USERCLR    ;
 106:  MESSAGE[ROBOT CLEAR FIXT 10] ;
 107:  JMP LBL[999] ;
 108:   ;
 109:   ;
 110:  LBL[110:Fixt11] ;
 111:  ! Set Clear Of Fixt 11 Output ;
 112:  DO[131:ClrFixture11]=ON ;
 113:  CALL USERCLR    ;
 114:  MESSAGE[ROBOT CLEAR FIXT 11] ;
 115:  JMP LBL[999] ;
 116:   ;
 117:   ;
 118:  LBL[120:Fixt12] ;
 119:  ! Set Clear Of Fixt 12 Output ;
 120:  DO[132:ClrFixture12]=ON ;
 121:  CALL USERCLR    ;
 122:  MESSAGE[ROBOT CLEAR FIXT 12] ;
 123:  JMP LBL[999] ;
 124:   ;
 125:   ;
 126:  LBL[130:Fixt13] ;
 127:  ! Set Clear Of Fixt 13 Output ;
 128:  DO[133:ClrFixture13]=ON ;
 129:  CALL USERCLR    ;
 130:  MESSAGE[ROBOT CLEAR FIXT 13] ;
 131:  JMP LBL[999] ;
 132:   ;
 133:   ;
 134:  LBL[140:Fixt14] ;
 135:  ! Set Clear Of Fixt 14 Output ;
 136:  DO[134:ClrFixture14]=ON ;
 137:  CALL USERCLR    ;
 138:  MESSAGE[ROBOT CLEAR FIXT 14] ;
 139:  JMP LBL[999] ;
 140:   ;
 141:   ;
 142:  LBL[150:Fixt15] ;
 143:  ! Set Clear Of Fixt 15 Output ;
 144:  DO[135:ClrFixture15]=ON ;
 145:  CALL USERCLR    ;
 146:  MESSAGE[ROBOT CLEAR FIXT 15] ;
 147:  JMP LBL[999] ;
 148:   ;
 149:   ;
 150:  LBL[160:Fixt16] ;
 151:  ! Set Clear Of Fixt 16 Output ;
 152:  DO[136:ClrFixture16]=ON ;
 153:  CALL USERCLR    ;
 154:  MESSAGE[ROBOT CLEAR FIXT 16] ;
 155:  JMP LBL[999] ;
 156:   ;
 157:   ;
 158:  LBL[980:INVALID ARGUMENT] ;
 159:  GO[7:User Fault]=1 ;
 160:  UALM[1] ;
 161:  GO[7:User Fault]=0 ;
 162:  JMP LBL[1] ;
 163:   ;
 164:  LBL[999] ;
 165:  END ;
/POS
/END
