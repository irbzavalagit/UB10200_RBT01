/PROG  CHKPART	  Macro
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "ChkForParts V1.0";
PROG_SIZE	= 1008;
CREATE		= DATE 21-07-09  TIME 07:31:24;
MODIFIED	= DATE 21-07-09  TIME 07:31:24;
FILE_NAME	= CHKPART;
VERSION		= 10;
LINE_COUNT	= 24;
MEMORY_SIZE	= 1324;
PROTECT		= READ;
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
   3:  !******************************** ;
   4:  ! Part Present Macro ;
   5:  ! Version 1.0 ;
   6:  !******************************** ;
   7:   ;
   8:  !Calls karel program for checking ;
   9:  !if any part presents are detect- ;
  10:  !ing a part.  Error will occur if ;
  11:  !any parts are not detected. ;
  12:   ;
  13:  !Arguments are part present ;
  14:  !switch numbers for individual ;
  15:  !inputs, NOT valve numbers. ;
  16:   ;
  17:  !If no argument is given, the ;
  18:  !the macro will abort. ;
  19:   ;
  20:  $DSBL_FAULT.$ENABLE=(1) ;
  21:  $RSMFST_SV.$FFAST_DSP=(0) ;
  22:  CALL MHPTPRES(AR[1],AR[2],AR[3],AR[4],AR[5],AR[6],AR[7],AR[8],AR[9],AR[10]) ;
  23:  $RSMFST_SV.$FFAST_DSP=(1) ;
  24:  $DSBL_FAULT.$ENABLE=(0) ;
/POS
/END
