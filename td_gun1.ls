/PROG  TD_GUN1
/ATTR
OWNER		= RIVIAN;
COMMENT		= "TD CarGun1 V2.5";
PROG_SIZE	= 1934;
CREATE		= DATE 21-07-09  TIME 07:32:28;
MODIFIED	= DATE 21-07-26  TIME 03:42:56;
FILE_NAME	= TD_GUN1;
VERSION		= 25;
LINE_COUNT	= 76;
MEMORY_SIZE	= 2446;
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
   3:  !******************************** ;
   4:  ! Tip Dress Carried Gun 1 ;
   5:  ! Version 2.5 ;
   6:  !******************************** ;
   7:   ;
   8:  !Tipdress Path ;
   9:  SET PATH(231) ;
  10:   ;
  11:  ! Tip Dress Frame ;
  12:  UFRAME_NUM=19 ;
  13:  ! Servo Gun 1 ;
  14:  UTOOL_NUM=1 ;
  15:  ! Servo Gun 1 ;
  16:  PAYLOAD[1:SSW1] ;
  17:   ;
  18:L PR[174:TD_PounceG1] 1000mm/sec CNT25    ;
  19:   ;
  20:  !-------------------------------- ;
  21:  !Macro Checks Cutter Count ;
  22:  !And Limit, Faulted Wrong Status ;
  23:  !-------------------------------- ;
  24:   ;
  25:  IF (DI[34:DryCycle Mode]=ON OR $SPOTCONFIG.$STROKE_ENBL=0),JMP LBL[5] ;
  26:  IF (F[49:Caps Are Changed]=ON AND F[30:Capwear Complete]=ON),JMP LBL[5] ;
  27:   ;
  28:  ! Tip Wear Update ;
  29:  ! For Calibration Plate ;
  30:  ! Call TW_UPDAT(1,0) Instead ;
  31:  ! Call WR_UPDAT(1,0) ;
  32:  CALL TW_UPDAT(1,0) ;
  33:   ;
  34:  LBL[5] ;
  35:   ;
  36:  ! Save Original Tip Wear ;
  37:  ! For Gun 2 Change ;
  38:  ! $SGGUN1 To $SGGUN2 ;
  39:  R[32:Origin Tip Wear]=($SGGUN1.$SETUP.$WRDWN_TIP+$SGGUN1.$SETUP.$WRDWN_RBT) ;
  40:   ;
  41:  ! Reset Cap Wear ;
  42:  F[30:Capwear Complete]=(OFF) ;
  43:  ! Retry Setup ;
  44:  R[31:TD Retry Count]=0    ;
  45:   ;
  46:  LBL[10:Tipdres] ;
  47:  ! Setup Retry Flag ;
  48:  F[31:TD Retry]=(OFF) ;
  49:   ;
  50:L PR[174:TD_PounceG1] 1000mm/sec CNT25    ;
  51:   ;
  52:L PR[175:TD_PosG1] 400mm/sec CNT10 Tool_Offset,PR[81:Z-20mm]    ;
  53:   ;
  54:  !-------------------------------- ;
  55:  !Typical Servo Gun Opening 50mm ;
  56:  !Change If Diferent Needed ;
  57:  !-------------------------------- ;
  58:  !Tip Dress Position ;
  59:L PR[175:TD_PosG1] 400mm/sec FINE    ;
  60:   ;
  61:  CALL TD_DRESSCAP(1) ;
  62:   ;
  63:  !Above Tipdress ;
  64:L PR[175:TD_PosG1] 400mm/sec CNT10 Tool_Offset,PR[81:Z-20mm]    ;
  65:   ;
  66:L PR[174:TD_PounceG1] 400mm/sec CNT10    ;
  67:   ;
  68:  !Check Tip Dress Wear ;
  69:  CALL TD_WRCHKG1    ;
  70:   ;
  71:  IF (F[31:TD Retry]=ON),JMP LBL[10] ;
  72:   ;
  73:  ! Reset Tip Dress ;
  74:  F[48:Tip Dressed]=(OFF) ;
  75:  F[52:TD Request]=(OFF) ;
  76:   ;
/POS
/END
