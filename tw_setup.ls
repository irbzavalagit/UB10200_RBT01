/PROG  TW_SETUP	  Macro
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "Setup tipwear";
PROG_SIZE	= 2102;
CREATE		= DATE 21-07-09  TIME 07:32:36;
MODIFIED	= DATE 21-07-09  TIME 07:32:36;
FILE_NAME	= TW_1;
VERSION		= 0;
LINE_COUNT	= 73;
MEMORY_SIZE	= 2478;
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
   4:  ! Request Tipdress ;
   5:  F[52:TD Request]=(ON) ;
   6:   ;
   7:  !  Setup fixture-based wear measm ;
   8:   ;
   9:  !Input parameter(s) ;
  10:  !  AR[1]: Gun number ;
  11:   ;
  12:  !Data register(s) used ;
  13:  !  R[10] ;
  14:   ;
  15:  !Position register(s) used ;
  16:  !  PR[21] ;
  17:   ;
  18:  !Version info / revisions ;
  19:  !v6.22: multi-gun support ;
  20:  !v6.31: parameter reduction ;
  21:   ;
  22:  !Initialize gun data ;
  23:  !parm1:gun number ;
  24:  CALL TWKINIT(AR[1]) ;
  25:   ;
  26:  !Move to posn away from fixture ;
  27:  !  parm1: gun number ;
  28:  !  parm2: posn number ;
  29:  !  parm3: data register ;
  30:  CALL TW_MV2PT(AR[1],1,10) ;
  31:   ;
  32:  !Set force threshold ;
  33:  !NOTE:Gun is opened via TWTTHOLD ;
  34:  !  parm1: gun number ;
  35:  !  parm2: data register ;
  36:  !  parm3: position register ;
  37:  CALL TWKTHOLD(AR[1],10,21) ;
  38:   ;
  39:  !Move to posn away from fixture ;
  40:  !  parm1: gun number ;
  41:  !  parm2: posn number ;
  42:  !  parm3: data register ;
  43:  CALL TW_MV2PT(AR[1],1,10) ;
  44:   ;
  45:  !Calibrate 0 with master tips ;
  46:  !  parm1: gun number ;
  47:  !  parm2: data register1 ;
  48:  !  parm3: position register ;
  49:  CALL TWKZRCLB(AR[1],10,21) ;
  50:   ;
  51:  !Move to fixture position ;
  52:  !  parm1: gun number ;
  53:  !  parm2: posn number ;
  54:  !  parm3: data register ;
  55:  CALL TW_MV2PT(AR[1],1,10) ;
  56:  CALL TW_MV2PT(AR[1],2,10) ;
  57:   ;
  58:  !Measure open distance ;
  59:  !  parm1: gun number ;
  60:  !  parm2: data register1 ;
  61:  !  parm3: position register1 ;
  62:  CALL TWKFXTCH(AR[1],10,21) ;
  63:   ;
  64:  !Move to posn away from fixture ;
  65:  !  parm1: gun number ;
  66:  !  parm2: posn number ;
  67:  !  parm3: data register ;
  68:  CALL TW_MV2PT(AR[1],2,10) ;
  69:  CALL TW_MV2PT(AR[1],1,10) ;
  70:   ;
  71:  ! Set Capwear Complete ;
  72:  F[30:Capwear Complete]=(ON) ;
  73:   ;
/POS
/END
