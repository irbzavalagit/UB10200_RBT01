/PROG  CC_MAGCHK	  Macro
/ATTR
OWNER		= RIVIAN;
COMMENT		= "CC Mag Chk V1.0";
PROG_SIZE	= 1388;
CREATE		= DATE 21-07-09  TIME 07:32:44;
MODIFIED	= DATE 21-07-09  TIME 07:32:44;
FILE_NAME	= CC_MAGCH;
VERSION		= 10;
LINE_COUNT	= 60;
MEMORY_SIZE	= 1812;
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
   4:  ! Cap Change Magazine Check ;
   5:  ! Version 1.0 ;
   6:  !******************************** ;
   7:   ;
   8:  LBL[1:BEGIN] ;
   9:   ;
  10:  $WAITTMOUT=500 ;
  11:   ;
  12:  ! Check Upper Cap Magazine Pres ;
  13:  WAIT DI[823:TC1 UpCap Attached]=ON TIMEOUT,LBL[980] ;
  14:   ;
  15:  ! Check Upper Cap Present ;
  16:  WAIT DI[822:TC1 UpCap Empty]=ON TIMEOUT,LBL[980] ;
  17:   ;
  18:  ! Check Lower Cap Magazine Pres ;
  19:  WAIT DI[825:TC1 LowCap Attached]=ON TIMEOUT,LBL[983] ;
  20:   ;
  21:  ! Check Lower Cap Present ;
  22:  WAIT DI[824:TC1 LowCap Empty]=ON TIMEOUT,LBL[983] ;
  23:   ;
  24:  END ;
  25:   ;
  26:   ;
  27:  !******************************** ;
  28:  ! Fault Section ;
  29:  !******************************** ;
  30:  LBL[980:Upper Mag] ;
  31:  ! Upper Magazine Not Pres ;
  32:  GO[6:Error Codes]=61 ;
  33:  UALM[61] ;
  34:  GO[6:Error Codes]=0 ;
  35:  JMP LBL[1] ;
  36:   ;
  37:   ;
  38:  LBL[981:Upper Cap] ;
  39:  ! Upper Cap Not Pres ;
  40:  GO[6:Error Codes]=87 ;
  41:  UALM[87] ;
  42:  GO[6:Error Codes]=0 ;
  43:  JMP LBL[1] ;
  44:   ;
  45:  LBL[982:Lower Mag] ;
  46:  ! Lower Magazine Not Pres ;
  47:  GO[6:Error Codes]=60 ;
  48:  UALM[60] ;
  49:  GO[6:Error Codes]=0 ;
  50:  JMP LBL[1] ;
  51:   ;
  52:   ;
  53:  LBL[983:Lower Cap] ;
  54:  ! Lower Cap Not Pres ;
  55:  GO[6:Error Codes]=86 ;
  56:  UALM[86] ;
  57:  GO[6:Error Codes]=0 ;
  58:  JMP LBL[1] ;
  59:   ;
  60:   ;
/POS
/END
