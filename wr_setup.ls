/PROG  WR_SETUP	  Macro
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "Setup tipwear";
PROG_SIZE	= 2170;
CREATE		= DATE 21-07-09  TIME 07:32:38;
MODIFIED	= DATE 21-07-09  TIME 07:32:38;
FILE_NAME	= TW_SETUP;
VERSION		= 0;
LINE_COUNT	= 74;
MEMORY_SIZE	= 2550;
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
   7:  !Program description ;
   8:  !  Setup fixtureless wear measmt ;
   9:  !  Version:6.40 ;
  10:   ;
  11:  !Input parameters ;
  12:  !  AR[1]: Gun number ;
  13:   ;
  14:  !Data registers R[] used ;
  15:  !  R[10]: Work register ;
  16:  !  R[11]: Work register ;
  17:   ;
  18:  !Position registers used ;
  19:  !  PR[20]: Position at wr start ;
  20:  !  PR[21]: Work position register ;
  21:   ;
  22:   ;
  23:  !Initialize gun data ;
  24:  !  Parm1:gun number ;
  25:  CALL TWKINIT(AR[1]) ;
  26:   ;
  27:  !Update grp mask for motn prog ;
  28:  !  Parm1: gun number ;
  29:  !  Parm2: program name ;
  30:  CALL TWKGPMSK(AR[1],'TW_MVGUN') ;
  31:   ;
  32:  !  Write present posn to PR ;
  33:  !  Parm1: Gun # ;
  34:  !  Parm2: Position register index ;
  35:  !  Parm3: Typ(1=opndist,2=curpos) ;
  36:  CALL TWKWRTPR(AR[1],20,2) ;
  37:   ;
  38:  !Write open distance to PR ;
  39:  !  Parm1: Gun # ;
  40:  !  Parm2: Position register index ;
  41:  !  Parm3: Typ(1=opndist,2=curpos) ;
  42:  !  Parm4: Magnitude of open dist ;
  43:  CALL TWKWRTPR(AR[1],21,1,25) ;
  44:   ;
  45:  !Move gun to PR ;
  46:  !  Parm1: Velocity label ;
  47:  !  Parm2: Position register index ;
  48:  CALL TW_MVGUN(1,21) ;
  49:   ;
  50:  !Skip threshold measurement ;
  51:  !Increment phase(step) ;
  52:  !  Parm1:gun number ;
  53:  CALL TWKINCPH(AR[1]) ;
  54:   ;
  55:  !Calibrate 0 with master tips ;
  56:  !  parm1: gun number ;
  57:  !  parm2: data register1 ;
  58:  !  parm3: position register ;
  59:  !  parm4: data register2 (<v6.31) ;
  60:  CALL TWKZRCLB(AR[1],10,21) ;
  61:   ;
  62:  !Skip fixture measurement ;
  63:  !Increment phase(step) ;
  64:  !  Parm1:gun number ;
  65:  CALL TWKINCPH(AR[1]) ;
  66:   ;
  67:  !Move gun to PR ;
  68:  !  Parm1: Velocity label ;
  69:  !  Parm2: Position register index ;
  70:  CALL TW_MVGUN(1,20) ;
  71:   ;
  72:  ! Set Capwear Complete ;
  73:  F[30:Capwear Complete]=(ON) ;
  74:   ;
/POS
/END
