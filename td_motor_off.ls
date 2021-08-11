/PROG  TD_MOTOR_OFF	  Macro
/ATTR
OWNER		= RIVIAN;
COMMENT		= "TDMotor OFF V1.1";
PROG_SIZE	= 916;
CREATE		= DATE 21-07-09  TIME 07:32:52;
MODIFIED	= DATE 21-07-09  TIME 07:32:52;
FILE_NAME	= TD_MOTOR;
VERSION		= 11;
LINE_COUNT	= 32;
MEMORY_SIZE	= 1452;
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
   5:  ! Tip Dress Motor OFF ;
   6:  ! Version 1.1 ;
   7:  !******************************** ;
   8:   ;
   9:  LBL[1:BEGIN] ;
  10:   ;
  11:  ! Stop Tip Dress Motor ;
  12:  DO[763:TD Motor ON]=OFF ;
  13:   ;
  14:  ! Set Timeout Duration ;
  15:  $WAITTMOUT=500 ;
  16:   ;
  17:  ! Check For Motor Not Running ;
  18:  WAIT DI[758:TD Motor Running]=OFF TIMEOUT,LBL[980] ;
  19:   ;
  20:  END ;
  21:   ;
  22:   ;
  23:  !******************************** ;
  24:  ! Fault Section ;
  25:  !******************************** ;
  26:  LBL[980:TD RUNNING] ;
  27:  ! Tip Dress Motor still running ;
  28:  GO[6:Error Codes]=58 ;
  29:  UALM[58] ;
  30:  GO[6:Error Codes]=0 ;
  31:  JMP LBL[1] ;
  32:   ;
/POS
/END
