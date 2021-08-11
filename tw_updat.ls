/PROG  TW_UPDAT	  Macro
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "Update wear vals";
PROG_SIZE	= 1740;
CREATE		= DATE 21-07-09  TIME 07:32:36;
MODIFIED	= DATE 21-07-09  TIME 07:32:36;
FILE_NAME	= TW_1;
VERSION		= 0;
LINE_COUNT	= 59;
MEMORY_SIZE	= 2036;
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
  SPOT : TRUE ; 
  SPOT Welding Equipment Number : 1 ;
/MN
   1:  ! Reset Capwear Complete ;
   2:  F[30:Capwear Complete]=(OFF) ;
   3:   ;
   4:  !Program description ;
   5:  !  Update fixture-based wear meas ;
   6:   ;
   7:  !Input parameter(s) ;
   8:  !  AR[1]: Gun number ;
   9:   ;
  10:  !Data register(s) used ;
  11:  !  R[10] ;
  12:   ;
  13:  !Position register(s) used ;
  14:  !  PR[21] ;
  15:   ;
  16:  !Version info / revisions ;
  17:  !v6.22: multi-gun support ;
  18:  !v6.31: parameter reduction ;
  19:   ;
  20:  !Move to posn away from fixture ;
  21:  !  parm1: gun number ;
  22:  !  parm2: posn number ;
  23:  !  parm3: data register ;
  24:  CALL TW_MV2PT(AR[1],1,10) ;
  25:   ;
  26:  !Calibrate 0 with worn tips ;
  27:  !  parm1: gun number ;
  28:  !  parm2: data register1 ;
  29:  !  parm3: position register ;
  30:  CALL TWKZRCLB(AR[1],10,21) ;
  31:   ;
  32:  !Move to fixture position ;
  33:  !  parm1: gun number ;
  34:  !  parm2: posn number ;
  35:  !  parm3: data register ;
  36:  CALL TW_MV2PT(AR[1],1,10) ;
  37:  CALL TW_MV2PT(AR[1],2,10) ;
  38:   ;
  39:  !Measure open distance ;
  40:  !  parm1: gun number ;
  41:  !  parm2: data register1 ;
  42:  !  parm3: position register1 ;
  43:  !  parm4: new-1/worn-0 ;
  44:  CALL TWKFXTCH(AR[1],10,21,AR[2]) ;
  45:   ;
  46:  !Move to zero calibration posn ;
  47:  !  parm1: gun number ;
  48:  !  parm2: posn number ;
  49:  !  parm3: data register ;
  50:  CALL TW_MV2PT(AR[1],2,10) ;
  51:  CALL TW_MV2PT(AR[1],1,10) ;
  52:   ;
  53:  !Pressure test ;
  54:  CALL SGPRSTST(AR[1],AR[2]) ;
  55:  CALL TW_MV2PT(AR[1],1,10) ;
  56:   ;
  57:  ! Set Capwear Complete ;
  58:  F[30:Capwear Complete]=(ON) ;
  59:   ;
/POS
/END
