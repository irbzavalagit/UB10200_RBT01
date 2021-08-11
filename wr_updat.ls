/PROG  WR_UPDAT	  Macro
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "Update wear vals";
PROG_SIZE	= 2180;
CREATE		= DATE 21-07-09  TIME 07:32:40;
MODIFIED	= DATE 21-07-09  TIME 07:32:40;
FILE_NAME	= TW_UPDAT;
VERSION		= 0;
LINE_COUNT	= 72;
MEMORY_SIZE	= 2700;
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
   5:  !  Update fixtureless wear measmt ;
   6:  !  Version:6.40 ;
   7:   ;
   8:  !Input parameters ;
   9:  !  AR[1]: Gun number ;
  10:  !  AR[2]: New tip ( reset wr ) ;
  11:   ;
  12:  !Data registers R[] used ;
  13:  !  R[10]: Work register ;
  14:  !  R[11]: Work register ;
  15:   ;
  16:  !Position registers used ;
  17:  !  PR[20]: Position at wr start ;
  18:  !  PR[21]: Work position register ;
  19:   ;
  20:  !Update grp mask for motn prog ;
  21:  !  Parm1: gun number ;
  22:  !  Parm2: program name ;
  23:  CALL TWKGPMSK(AR[1],'TW_MVGUN') ;
  24:   ;
  25:  !Write present position to PR ;
  26:  !  Parm1: Gun # ;
  27:  !  Parm2: Position register index ;
  28:  !  Parm3: Typ(1=opndist,2=curpos) ;
  29:  CALL TWKWRTPR(AR[1],20,2) ;
  30:   ;
  31:  !Write open distance to PR ;
  32:  !  Parm1: Gun # ;
  33:  !  Parm2: Position register index ;
  34:  !  Parm3: Typ(1=opndist,2=curpos) ;
  35:  !  Parm4: Magnitude of open dist ;
  36:  CALL TWKWRTPR(AR[1],21,1,25) ;
  37:   ;
  38:  !Move gun to PR ;
  39:  !  Parm1: Velocity label ;
  40:  !  Parm2: Position register index ;
  41:  CALL TW_MVGUN(1,21) ;
  42:   ;
  43:  !Calibrate 0 with worn tips ;
  44:  !  parm1: gun number ;
  45:  !  parm2: data register1 ;
  46:  !  parm3: position register ;
  47:  !  parm4: data register2 ;
  48:  CALL TWKZRCLB(AR[1],10,21) ;
  49:  WAIT   0.00(sec) ;
  50:   ;
  51:  !Reset ref to 0 before checking ;
  52:  !for wear error, if new tip ;
  53:  R[10:Wear Upd SG Work]=AR[2]    ;
  54:  IF R[10:Wear Upd SG Work]<>1,JMP LBL[1] ;
  55:  CALL TWKRSWDN    ;
  56:  LBL[1] ;
  57:   ;
  58:  !Update wear amounts ;
  59:  !Parm1: 0<=Robot wear ratio<=1.0 ;
  60:  !RbtTipWear = ( rbtwr_ratio * ;
  61:  !               total wear ) ;
  62:  !Parm2: New tip installed ;
  63:  CALL TWKCALC2(.5,AR[2]) ;
  64:   ;
  65:  !Move gun to PR ;
  66:  !  Parm1: Velocity label ;
  67:  !  Parm2: Position register index ;
  68:  CALL TW_MVGUN(1,20) ;
  69:   ;
  70:  ! Set Capwear Complete ;
  71:  F[30:Capwear Complete]=(ON) ;
  72:   ;
/POS
/END
