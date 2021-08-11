/PROG  TDPDRESSCAP	  Macro
/ATTR
OWNER		= RIVIAN;
COMMENT		= "Dress Cap V1.1";
PROG_SIZE	= 1880;
CREATE		= DATE 21-07-09  TIME 07:32:48;
MODIFIED	= DATE 21-07-09  TIME 07:32:48;
FILE_NAME	= TDPDRESS;
VERSION		= 11;
LINE_COUNT	= 59;
MEMORY_SIZE	= 2372;
PROTECT		= READ_WRITE;
TCD:  STACK_SIZE	= 0,
      TASK_PRIORITY	= 50,
      TIME_SLICE	= 0,
      BUSY_LAMP_OFF	= 0,
      ABORT_REQUEST	= 0,
      PAUSE_REQUEST	= 0;
DEFAULT_GROUP	= *,1,*,*,*;
CONTROL_CODE	= 00001000 00000000;
/APPL
/MN
   1:  !******************************** ;
   2:  ! RIVIAN AUTOMOTIVE ;
   3:  !******************************** ;
   4:  ! Dress Cap Macro ;
   5:  ! Version 1.1 ;
   6:  !******************************** ;
   7:  ! AR[1] = Gun Number ;
   8:  !******************************** ;
   9:   ;
  10:  ! If Dry Cycle Disable Gun Stroke ;
  11:  R[27:Gun Stroke]=$SPOTCONFIG.$STROKE_ENBL ;
  12:  IF (DI[34:DryCycle Mode]=ON),$SPOTCONFIG.$STROKE_ENBL=0 ;
  13:   ;
  14:  LBL[110:Gun_1] ;
  15:   ;
  16:  ! Count Up TD Retry Counter ;
  17:  R[31:TD Retry Count]=R[31:TD Retry Count]+1    ;
  18:   ;
  19:  !Turn off FFR During TD ;
  20:  IF (!DO[470:FFRActive]),$SVPRG_ENB=(0) ;
  21:   ;
  22:  ! Water Saver Water ON Macro ;
  23:  CALL WATER_ON    ;
  24:   ;
  25:  ! Tip Dress Motor ON ;
  26:  CALL TD_MOTOR_ON    ;
  27:   ;
  28:  ! If Stepper Reset Do New Caps ;
  29:  IF DI[708:StepResetG1]=ON,JMP LBL[120] ;
  30:   ;
  31:  ! Caps Dress ;
  32:  SPOT[SD=20,P=97,t=5.0,S=254,ED=20] ;
  33:  JMP LBL[130] ;
  34:   ;
  35:  LBL[120] ;
  36:  ! New Caps Dress ;
  37:  SPOT[SD=20,P=96,t=5.0,S=255,ED=20] ;
  38:  SPOT[SD=20,P=99,t=5.0,S=248,ED=20] ;
  39:   ;
  40:  LBL[130] ;
  41:   ;
  42:  !Tip Dress Check ;
  43:  !For Motor Running ;
  44:  IF DI[758:TD Motor Running]=OFF,JMP LBL[110] ;
  45:   ;
  46:  !Reset Tip Dress Request Group 1 ;
  47:  IF ($SPOTCONFIG.$STROKE_ENBL=1),CALL RESET_TD_REQ_G1 ;
  48:   ;
  49:  !Tip Dress Motor OFF ;
  50:  CALL TD_MOTOR_OFF    ;
  51:   ;
  52:  ! Turn Turn ON FFR AFTER TD ;
  53:  IF (!DO[470:FFRActive]),$SVPRG_ENB=(1) ;
  54:   ;
  55:  ! Reset TD Request G1 ;
  56:   ;
  57:  ! If Dry Cycle Enable Gun Stroke ;
  58:  IF (DI[34:DryCycle Mode]=ON),$SPOTCONFIG.$STROKE_ENBL=R[27:Gun Stroke] ;
  59:   ;
/POS
/END
