/PROG  TD_DRESSCAP	  Macro
/ATTR
OWNER		= RIVIAN;
COMMENT		= "Dress Cap V1.4";
PROG_SIZE	= 1960;
CREATE		= DATE 21-07-09  TIME 07:32:26;
MODIFIED	= DATE 21-07-09  TIME 07:32:26;
FILE_NAME	= TD_DRESS;
VERSION		= 14;
LINE_COUNT	= 60;
MEMORY_SIZE	= 2440;
PROTECT		= READ_WRITE;
TCD:  STACK_SIZE	= 0,
      TASK_PRIORITY	= 50,
      TIME_SLICE	= 0,
      BUSY_LAMP_OFF	= 0,
      ABORT_REQUEST	= 0,
      PAUSE_REQUEST	= 0;
DEFAULT_GROUP	= 1,1,*,*,*;
CONTROL_CODE	= 00000000 00000000;
/APPL
  SPOT : TRUE ; 
  SPOT Welding Equipment Number : 1 ;
/MN
   1:  !******************************** ;
   2:  ! RIVIAN AUTOMOTIVE ;
   3:  !******************************** ;
   4:  ! Dress Cap Macro ;
   5:  ! Version 1.4 ;
   6:  !******************************** ;
   7:  ! AR[1] = Gun Number ;
   8:  !******************************** ;
   9:   ;
  10:  ! Update Tipdress Pos ;
  11:  ! For Multiple Guns ;
  12:  PR[231:TipDress]=LPOS    ;
  13:   ;
  14:  ! If Dry Cycle Disable Gun Stroke ;
  15:  R[27:Gun Stroke]=$SPOTCONFIG.$STROKE_ENBL ;
  16:  IF (DO[470:FFRActive]=ON),$SPOTCONFIG.$STROKE_ENBL=1 ;
  17:  IF (DI[34:DryCycle Mode]=ON),$SPOTCONFIG.$STROKE_ENBL=0 ;
  18:   ;
  19:  LBL[110:Gun_1] ;
  20:   ;
  21:  ! Count Up TD Retry Counter ;
  22:  R[31:TD Retry Count]=R[31:TD Retry Count]+1    ;
  23:   ;
  24:  ! Disable Spot Error recovery ;
  25:  $SVPRG_ENB=0 ;
  26:   ;
  27:  ! Water Saver Water ON Macro ;
  28:  CALL WATER_ON    ;
  29:   ;
  30:  ! Tip Dress Motor ON ;
  31:  CALL TD_MOTOR_ON    ;
  32:   ;
  33:  ! Tip Dressed ;
  34:  F[48:Tip Dressed]=(ON) ;
  35:  ! Reset Capwear Complete ;
  36:  F[30:Capwear Complete]=(OFF) ;
  37:   ;
  38:  ! If Stepper Reset Do New Caps ;
  39:  IF (F[49:Caps Are Changed]=ON AND R[31:TD Retry Count]=1),JMP LBL[120] ;
  40:   ;
  41:  ! Caps Dress ;
  42:L PR[231:TipDress] 500mm/sec FINE
    :  SPOT[SD=78,P=90,t=5.0,S=254,ED=46]    ;
  43:  JMP LBL[130] ;
  44:   ;
  45:  LBL[120] ;
  46:  ! New Caps Dress ;
  47:L PR[231:TipDress] 500mm/sec FINE
    :  SPOT[SD=78,P=91,t=5.0,S=253,ED=78]    ;
  48:  SPOT[SD=78,P=90,t=5.0,S=254,ED=46] ;
  49:   ;
  50:  LBL[130] ;
  51:   ;
  52:  !Reset Tip Dress Request Group 1 ;
  53:  IF ($SPOTCONFIG.$STROKE_ENBL=1),CALL TD_RESET_REQ_G1 ;
  54:   ;
  55:  ! Enable Spot Error recovery ;
  56:  $SVPRG_ENB=1 ;
  57:   ;
  58:  ! Return The Gun Stroke State ;
  59:  $SPOTCONFIG.$STROKE_ENBL=R[27:Gun Stroke] ;
  60:   ;
/POS
/END
