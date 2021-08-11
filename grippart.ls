/PROG  GRIPPART	  Macro
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "Pick Up Parts";
PROG_SIZE	= 962;
CREATE		= DATE 21-07-09  TIME 07:31:34;
MODIFIED	= DATE 21-07-09  TIME 07:31:34;
FILE_NAME	= GRIPPART;
VERSION		= 10;
LINE_COUNT	= 23;
MEMORY_SIZE	= 1282;
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
   4:  ! Grip Part Macro ;
   5:  ! Version 1.0 ;
   6:  !******************************** ;
   7:   ;
   8:  !Calls karel program for closing ;
   9:  !the valve specified by the ;
  10:  !arguments.  It will also call ;
  11:  !chkgrcls to check clamps or ;
  12:  !vacuum inputs. ;
  13:   ;
  14:  !Arguments are valve numbers. ;
  15:   ;
  16:  !If no argument is given, the ;
  17:  !macro will use the current valve ;
  18:   ;
  19:  $DSBL_FAULT.$ENABLE=(1) ;
  20:  $RSMFST_SV.$FFAST_DSP=(0) ;
  21:  CALL MHGRIPPT(AR[1],AR[2],AR[3],AR[4],AR[5],AR[6],AR[7],AR[8],AR[9],AR[10]) ;
  22:  $RSMFST_SV.$FFAST_DSP=(1) ;
  23:  $DSBL_FAULT.$ENABLE=(0) ;
/POS
/END
