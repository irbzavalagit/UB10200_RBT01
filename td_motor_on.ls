/PROG  TD_MOTOR_ON	  Macro
/ATTR
OWNER		= RIVIAN;
COMMENT		= "TD Motor ON V1.1";
PROG_SIZE	= 1206;
CREATE		= DATE 21-07-09  TIME 07:32:54;
MODIFIED	= DATE 21-07-09  TIME 07:32:54;
FILE_NAME	= TD_MOTOR;
VERSION		= 11;
LINE_COUNT	= 49;
MEMORY_SIZE	= 1674;
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
   3:  !******************************** ;
   4:  ! Aplication # 1 ;
   5:  ! Tip Dress Motor ON ;
   6:  ! Version 1.1 ;
   7:  !******************************** ;
   8:   ;
   9:  LBL[1:BEGIN] ;
  10:   ;
  11:  ! Set Timeout Duration ;
  12:  $WAITTMOUT=500 ;
  13:   ;
  14:  ! Reset WTC If No Fault OFF ;
  15:  IF (DI[700:Major alarm     ]=OFF) THEN ;
  16:  DO[711:Reset welder    ]=ON ;
  17:  WAIT    .50(sec) ;
  18:  DO[711:Reset welder    ]=OFF ;
  19:  ENDIF ;
  20:   ;
  21:  ! Check No Fault ;
  22:  WAIT DI[700:Major alarm     ]=ON TIMEOUT,LBL[980] ;
  23:   ;
  24:  ! Start Tip Dress Motor ;
  25:  DO[763:TD Motor ON]=ON ;
  26:   ;
  27:  ! Check For Motor Running ;
  28:  WAIT DI[758:TD Motor Running]=ON TIMEOUT,LBL[981] ;
  29:   ;
  30:  END ;
  31:   ;
  32:   ;
  33:  !******************************** ;
  34:  ! Fault Section ;
  35:  !******************************** ;
  36:  LBL[980:WC_FAULT] ;
  37:  ! Weld Controller Faulted ;
  38:  GO[6:Error Codes]=56 ;
  39:  UALM[56] ;
  40:  GO[6:Error Codes]=0 ;
  41:  JMP LBL[1] ;
  42:   ;
  43:  LBL[981:TD_NOT_RUNNING] ;
  44:  ! Tip Dress Motor Not Running ;
  45:  GO[6:Error Codes]=57 ;
  46:  UALM[57] ;
  47:  GO[6:Error Codes]=0 ;
  48:  JMP LBL[1] ;
  49:   ;
/POS
/END
