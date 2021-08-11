/PROG  SET_PATH	  Macro
/ATTR
OWNER		= RIVIAN;
COMMENT		= "Set Path V2.2";
PROG_SIZE	= 1406;
CREATE		= DATE 21-07-09  TIME 07:32:00;
MODIFIED	= DATE 21-07-09  TIME 07:32:00;
FILE_NAME	= SET_PATH;
VERSION		= 22;
LINE_COUNT	= 59;
MEMORY_SIZE	= 1834;
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
   3:  ! Macro Set Paths Number ;
   4:  ! Version 2.2 ;
   5:  !******************************** ;
   6:   ;
   7:  LBL[1:Begin] ;
   8:   ;
   9:  ! Reset Wrong Path Alarm ;
  10:  DO[472:WrongPathAlrm]=OFF ;
  11:   ;
  12:  ! Set Path Complete ;
  13:  DO[72:PathComplete]=ON ;
  14:   ;
  15:  ! Ignores Path Input From Plc ;
  16:  ! And If Wait Path Didn't Run ;
  17:  IF (UO[7:At home]=ON OR UO[8:TP enabled]=ON OR F[10:WaitPathFlag]=OFF),JMP LBL[20] ;
  18:   ;
  19:  ! Checks Robot & Plc Path Match ;
  20:  LBL[10] ;
  21:  WAIT DI[23:ReqEnterCell]=OFF    ;
  22:  $WAITTMOUT=500 ;
  23:  WAIT (GI[1:NextPath]=AR[1]) TIMEOUT,LBL[980] ;
  24:  ! If Wait Path Didn't Run ;
  25:  IF (F[10:WaitPathFlag]=OFF),JMP LBL[30] ;
  26:   ;
  27:  ! Set Next Path ;
  28:  LBL[20] ;
  29:  GO[1:ActivePath]=AR[1] ;
  30:  ! Reset Path Complete ;
  31:  DO[72:PathComplete]=OFF ;
  32:  ! If Robot In Teach Continue ;
  33:  IF UO[8:TP enabled]=ON,JMP LBL[30] ;
  34:  ! If Wait Path Didn't Run ;
  35:  ! And Not At Home ;
  36:  IF (F[10:WaitPathFlag]=OFF AND UO[7:At home]=OFF),JMP LBL[10] ;
  37:   ;
  38:  LBL[30] ;
  39:  ! Stores Current Path ;
  40:  R[120:Current Path]=AR[1]    ;
  41:  F[10:WaitPathFlag]=(OFF) ;
  42:   ;
  43:  JMP LBL[99] ;
  44:   ;
  45:   ;
  46:  LBL[980:WrongPath] ;
  47:  ! Return Last Path ;
  48:  GO[1:ActivePath]=R[120:Current Path] ;
  49:  DO[72:PathComplete]=ON ;
  50:  ! Wrong Path Number ;
  51:  DO[472:WrongPathAlrm]=ON ;
  52:  GO[7:User Fault]=2 ;
  53:  UALM[2] ;
  54:  GO[7:User Fault]=0 ;
  55:  JMP LBL[1] ;
  56:   ;
  57:   ;
  58:  LBL[99:End] ;
  59:   ;
/POS
/END
