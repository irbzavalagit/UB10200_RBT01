/PROG  TDPGUN1
/ATTR
OWNER		= RIVIAN;
COMMENT		= "TD Ped Gun1 V1.0";
PROG_SIZE	= 1430;
CREATE		= DATE 21-07-09  TIME 07:32:24;
MODIFIED	= DATE 21-07-09  TIME 07:32:24;
FILE_NAME	= TDPGUN1;
VERSION		= 10;
LINE_COUNT	= 50;
MEMORY_SIZE	= 1942;
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
   4:  ! Tip Dress Pedestal Gun 1 ;
   5:  ! Version 1.0 ;
   6:  !******************************** ;
   7:   ;
   8:  ! Return Tip Dress Dump ;
   9:  CALL TD_DUMP_RET    ;
  10:   ;
  11:  !-------------------------------- ;
  12:  !Macro Checks Cutter Count ;
  13:  !And Limit, Faulted Wrong Status ;
  14:  !-------------------------------- ;
  15:   ;
  16:  R[31:TD Retry Count]=0    ;
  17:  !Tip Wear Update ;
  18:  CALL WR_UPDAT(1,0) ;
  19:   ;
  20:  !Save Original Tip Wear ;
  21:  R[32:Origin Tip Wear]=($SGGUN1.$SETUP.$WRDWN_TIP+$SGGUN1.$SETUP.$WRDWN_RBT) ;
  22:   ;
  23:  ! If Dry Cycle Disable Gun Stroke ;
  24:  R[27:Gun Stroke]=$SPOTCONFIG.$STROKE_ENBL ;
  25:  IF (DI[34:DryCycle Mode]=ON),$SPOTCONFIG.$STROKE_ENBL=0 ;
  26:   ;
  27:  LBL[10:Tipdress] ;
  28:   ;
  29:  ! Open Gun ;
  30:  CALL OPENSGG2    ;
  31:   ;
  32:  !Advance Tip Dress Dump ;
  33:  CALL TD_DUMP_ADV    ;
  34:   ;
  35:  CALL TDPDRESSCAP(1) ;
  36:   ;
  37:  ! Open Gun ;
  38:  CALL OPENSGG2    ;
  39:   ;
  40:  !Return Tip Dress Dump ;
  41:  CALL TD_DUMP_RET    ;
  42:   ;
  43:  !Tip Wear Update ;
  44:  CALL WR_UPDAT(1,0) ;
  45:   ;
  46:  !Check Tip Dress Wear ;
  47:  CALL CHECK_TD_WEAR    ;
  48:   ;
  49:  LBL[99] ;
  50:   ;
/POS
/END
