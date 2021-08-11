/PROG  CC_MANSELCT	  Macro
/ATTR
OWNER		= RIVIAN;
COMMENT		= "CC Man Slct V1.0";
PROG_SIZE	= 1342;
CREATE		= DATE 21-07-09  TIME 07:32:10;
MODIFIED	= DATE 21-07-09  TIME 07:32:10;
FILE_NAME	= CC_MANSE;
VERSION		= 10;
LINE_COUNT	= 64;
MEMORY_SIZE	= 1862;
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
   4:  ! Selection Reset Stepper ;
   5:  ! No Reset ;
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
  17:  SELECT R[120:Current Path]=242,JMP LBL[242] ;
  18:         =243,JMP LBL[243] ;
  19:         ELSE,JMP LBL[980] ;
  20:  END ;
  21:   ;
  22:   ;
  23:  LBL[242:ResetStep] ;
  24:  !Steper Reset ;
  25:  SET PATH(242) ;
  26:   ;
  27:  JMP LBL[999] ;
  28:   ;
  29:   ;
  30:  LBL[243:NoResetStep] ;
  31:  !No Steper Reset ;
  32:  SET PATH(243) ;
  33:   ;
  34:  ! Caps Not Changed ;
  35:  F[49:Caps Are Changed]=(OFF) ;
  36:   ;
  37:  JMP LBL[999] ;
  38:   ;
  39:   ;
  40:  LBL[999] ;
  41:   ;
  42:  END ;
  43:   ;
  44:   ;
  45:  LBL[900:Teach_Mode] ;
  46:  CALL PROMPTYN(10,78) ;
  47:  IF (R[78:Prmpt Y/N Answer]=1),R[120:Current Path]=(242) ;
  48:  IF (R[78:Prmpt Y/N Answer]=0),R[120:Current Path]=(243) ;
  49:  JMP LBL[2] ;
  50:   ;
  51:   ;
  52:  LBL[980:INVALID DECISION] ;
  53:  DO[472:WrongPathAlrm]=ON ;
  54:  GO[7:User Fault]=2 ;
  55:  UALM[2] ;
  56:  DO[472:WrongPathAlrm]=OFF ;
  57:  GO[7:User Fault]=0 ;
  58:  IF SO[7:TP enabled]=ON,JMP LBL[900] ;
  59:  CALL USERCLR    ;
  60:  MESSAGE[Wait for correct path] ;
  61:  WAIT NEXT PATH    ;
  62:  JMP LBL[1] ;
  63:   ;
  64:   ;
/POS
/END
