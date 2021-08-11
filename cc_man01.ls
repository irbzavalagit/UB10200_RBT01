/PROG  CC_MAN01
/ATTR
OWNER		= RIVIAN;
COMMENT		= "CpChng Man V1.0";
PROG_SIZE	= 1616;
CREATE		= DATE 21-07-09  TIME 07:32:10;
MODIFIED	= DATE 21-08-04  TIME 16:40:52;
FILE_NAME	= CC_MAN01;
VERSION		= 10;
LINE_COUNT	= 69;
MEMORY_SIZE	= 2140;
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
/MN
   1:  !******************************** ;
   2:  ! RIVIAN AUTOMOTIVE ;
   3:  ! Robot: xxxxxxxx ;
   4:  !******************************** ;
   5:  ! Manual Cap Change ;
   6:  ! Version 1.0 ;
   7:  !******************************** ;
   8:   ;
   9:  !Move To Manual Cap Change ;
  10:  SET PATH(232) ;
  11:   ;
  12:  !Put Frame Description ;
  13:  UFRAME_NUM=20 ;
  14:  !Put Utool Description ;
  15:  UTOOL_NUM=1 ;
  16:  !Put Payload Description ;
  17:  PAYLOAD[1:SSW1] ;
  18:   ;
  19:  !-------------------------------- ;
  20:  ! Add Points From ;
  21:  ! Cap Change Pounce ;
  22:  ! To Manual Cap Change Position ;
  23:  !-------------------------------- ;
  24:J PR[170:CC_PounceG1] 80% FINE    ;
  25:   ;
  26:   ;
  27:   ;
  28:   ;
  29:J PR[173:CC_ManualPsnG1] 80% FINE    ;
  30:   ;
  31:  !Open Gun Macro ;
  32:  CALL OPENSGG2    ;
  33:   ;
  34:  LBL[10] ;
  35:  ! Turn Water OFF ;
  36:  CALL WATER_OFF    ;
  37:   ;
  38:  ! Reset Capwear Complete ;
  39:  F[30:Capwear Complete]=(OFF) ;
  40:  ! Caps Changed ;
  41:  F[49:Caps Are Changed]=(ON) ;
  42:   ;
  43:  WAIT NEXT PATH    ;
  44:   ;
  45:  CALL CC_MANSELCT    ;
  46:   ;
  47:  ! Turn Water ON ;
  48:  CALL WATER_ON    ;
  49:   ;
  50:  !-------------------------------- ;
  51:  !Add Points From ;
  52:  !Man Cap Change Pos To Td Pounce ;
  53:  !-------------------------------- ;
  54:  !Put Frame Description ;
  55:  UFRAME_NUM=19 ;
  56:  !Put Utool Description ;
  57:  UTOOL_NUM=1 ;
  58:  !Put Payload Description ;
  59:  PAYLOAD[1:SSW1] ;
  60:   ;
  61:   ;
  62:   ;
  63:   ;
  64:   ;
  65:J PR[174:TD_PounceG1] 80% CNT25    ;
  66:   ;
  67:  ! Reset Steppers ;
  68:  IF GO[1:ActivePath]=242,CALL CC_RSTSTEPG1 ;
  69:   ;
/POS
/END
