/PROG  CC_RSTSTEPG1	  Macro
/ATTR
OWNER		= hudong;
COMMENT		= "Rst Step G1 V1.1";
PROG_SIZE	= 1140;
CREATE		= DATE 21-07-09  TIME 07:32:46;
MODIFIED	= DATE 21-07-09  TIME 07:32:46;
FILE_NAME	= CC_RSTST;
VERSION		= 11;
LINE_COUNT	= 42;
MEMORY_SIZE	= 1644;
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
   4:  ! Reset Steppers ;
   5:  ! Version 1.1 ;
   6:  !******************************** ;
   7:   ;
   8:  LBL[1:BEGIN] ;
   9:   ;
  10:  ! Set Stepper Reset Group1 ;
  11:  DO[713:Reset stepper   ]=ON ;
  12:   ;
  13:  ! Set Timeout Duration ;
  14:  $WAITTMOUT=500 ;
  15:   ;
  16:  ! Check Stepper Reset G1 Ack ;
  17:  WAIT DI[708:StepResetG1]=ON TIMEOUT,LBL[980] ;
  18:   ;
  19:  ! Reset Stepper Reset Group1 ;
  20:  DO[713:Reset stepper   ]=OFF ;
  21:  ! Reset CC Requirement ;
  22:  F[51:CC Request]=(OFF) ;
  23:   ;
  24:  ! Tip Wear Update ;
  25:  ! For Calibration Plate ;
  26:  ! Call TW_UPDAT(1,1) Instead ;
  27:  ! Call WR_UPDAT(1,1) ;
  28:  CALL TW_UPDAT(1,1) ;
  29:   ;
  30:  END ;
  31:   ;
  32:   ;
  33:  !******************************** ;
  34:  ! Fault Section ;
  35:  !******************************** ;
  36:  LBL[980:NOT RESET] ;
  37:  ! Stepper not reset ;
  38:  GO[7:User Fault]=68 ;
  39:  UALM[68] ;
  40:  GO[7:User Fault]=0 ;
  41:  JMP LBL[1] ;
  42:   ;
/POS
/END
