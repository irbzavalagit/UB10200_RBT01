/PROG  BGAPP1	  Macro
/ATTR
OWNER		= RIVIAN;
COMMENT		= "App1 Fdback V1.2";
PROG_SIZE	= 1310;
CREATE		= DATE 21-07-09  TIME 07:32:40;
MODIFIED	= DATE 21-07-09  TIME 07:32:40;
FILE_NAME	= BGAPP1;
VERSION		= 12;
LINE_COUNT	= 26;
MEMORY_SIZE	= 1674;
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
   3:  ! Application 1 Template ;
   4:  ! Used to send feedback bit to PL ;
   5:  ! DI/DO 177-240 <-> PLC ;
   6:  ! DI/DO 700-891 <-> DEVICE ;
   7:  ! Version 1.2 ;
   8:  !******************************** ;
   9:   ;
  10:   ;
  11:  ! WTC Feedback Signal ;
  12:  DO[723:Control Stop]=(UO[2:System ready]) ;
  13:  DO[724:System Cooling]=(DI[772:Wtr saver OK]) ;
  14:   ;
  15:  ! Tip Dress Trigger Signal ;
  16:  //DO[185:Tip dress req G1]=(DI[724:Tip dress req   ]) ;
  17:  IF (F[52:TD Request]=ON OR DI[724:Tip dress req   ]=ON),DO[185:Tip dress req G1]=(ON) ;
  18:  IF (F[52:TD Request]=OFF AND DI[724:Tip dress req   ]=OFF),DO[185:Tip dress req G1]=(OFF) ;
  19:  //DO[186:Tip dress req G2]=(DI[725:Tip dress req G2]) ;
  20:   ;
  21:  ! Cap Change Trigger Signal ;
  22:  IF (DI[720:Cap change req  ]=ON OR F[51:CC Request]=ON),DO[177:Cap chang req G1]=(ON) ;
  23:  //IF (DI[721:Cap chang req G2]=ON OR $SGGUN2.$SETUP.$WRDWN_TIP>=$SGGUN2.$SETUP.$MAXWDNTIP OR $SGGUN2.$SETUP.$WRDWN_RBT>=$SGGUN2.$SETUP.$MAXWDNRBT),DO[178:Cap chang req G2]=(ON) ;
  24:  IF (DI[720:Cap change req  ]=OFF AND $SGGUN1.$SETUP.$WRDWN_TIP<$SGGUN1.$SETUP.$MAXWDNTIP AND $SGGUN1.$SETUP.$WRDWN_RBT<$SGGUN1.$SETUP.$MAXWDNRBT AND F[51:CC Request]=OFF),DO[177:Cap chang req G1]=(OFF) ;
  25:  //IF (DI[721:Cap chang req G2]=OFF AND $SGGUN2.$SETUP.$WRDWN_TIP<$SGGUN2.$SETUP.$MAXWDNTIP AND $SGGUN2.$SETUP.$WRDWN_RBT<$SGGUN2.$SETUP.$MAXWDNRBT),DO[178:Cap chang req G2]=(OFF) ;
  26:   ;
/POS
/END
