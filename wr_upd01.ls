/PROG  WR_UPD01
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "Updat tw on gun1";
PROG_SIZE	= 840;
CREATE		= DATE 06-02-28  TIME 16:59:22;
MODIFIED	= DATE 06-02-28  TIME 17:09:50;
FILE_NAME	= TW_UPD01;
VERSION		= 0;
LINE_COUNT	= 20;
MEMORY_SIZE	= 1140;
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
   1:  !Program description ;
   2:  !  Update wear measmt for  ;
   3:  !  specified gun number. ;
   4:   ;
   5:  !  Note: Parm2 is used only for ;
   6:  !    measurement error checking ;
   7:  !    ( increased error function). ;
   8:  !    Parm2 should be <>0 at cap  ;
   9:  !    change only.   ;
  10:  !    If measurement error checkng ;
  11:  !    is NOT used, then Parm2  ;
  12:  !    should always be 0. ;
  13:   ;
  14:   ;
  15:  !Use the following call for ;
  16:  !fixtureless wear measurement ;
  17:  !Parm1: gun number ;
  18:  !Parm2: new tips:1,used tips:0 ;
  19:  !CALL WR_UPDAT( 1, 0 ) ;
  20:  CALL WR_UPDAT(1,0) ;
/POS
/END
