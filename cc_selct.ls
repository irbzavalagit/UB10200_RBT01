/PROG  CC_SELCT	  Macro
/ATTR
OWNER		= RIVIAN;
COMMENT		= "TpChng Slct V1.0";
PROG_SIZE	= 1074;
CREATE		= DATE 21-07-09  TIME 07:32:12;
MODIFIED	= DATE 21-07-09  TIME 07:32:12;
FILE_NAME	= CC_SELCT;
VERSION		= 10;
LINE_COUNT	= 43;
MEMORY_SIZE	= 1566;
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
   3:  ! Robot: xxxxxxxx ;
   4:  !******************************** ;
   5:  ! Selection Manual/Auto ;
   6:  ! Version 1.0 ;
   7:  !******************************** ;
   8:   ;
   9:  IF SO[7:TP enabled]=ON,JMP LBL[900] ;
  10:   ;
  11:  LBL[1:BEGIN] ;
  12:   ;
  13:  ! Select Path To Run Based On ;
  14:  ! Path Selection Number ;
  15:  R[120:Current Path]=GI[1:NextPath]    ;
  16:  LBL[2:TeachSel] ;
  17:  SELECT R[120:Current Path]=232,CALL CC_MAN01 ;
  18:         =233,CALL CC_AUT01 ;
  19:         ELSE,JMP LBL[980] ;
  20:  END ;
  21:   ;
  22:   ;
  23:  LBL[900:Teach_Mode] ;
  24:  CALL LISTMENU(16,79) ;
  25:  IF (R[79:List Menu Answer]=1),R[120:Current Path]=(232) ;
  26:  IF (R[79:List Menu Answer]=2),R[120:Current Path]=(233) ;
  27:  JMP LBL[2] ;
  28:   ;
  29:   ;
  30:  LBL[980:INVALID DECISION] ;
  31:  DO[472:WrongPathAlrm]=ON ;
  32:  GO[7:User Fault]=2 ;
  33:  UALM[2] ;
  34:  DO[472:WrongPathAlrm]=OFF ;
  35:  GO[7:User Fault]=0 ;
  36:  IF SO[7:TP enabled]=ON,JMP LBL[900] ;
  37:  CALL USERCLR    ;
  38:  MESSAGE[Wait for correct path] ;
  39:  WAIT NEXT PATH    ;
  40:  JMP LBL[1] ;
  41:   ;
  42:  LBL[999] ;
  43:   ;
/POS
/END
