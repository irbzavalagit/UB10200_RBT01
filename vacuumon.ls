/PROG  VACUUMON	  Macro
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "Vacuum ON V1.0";
PROG_SIZE	= 886;
CREATE		= DATE 21-07-09  TIME 07:32:02;
MODIFIED	= DATE 21-07-09  TIME 07:32:02;
FILE_NAME	= VACUUMON;
VERSION		= 10;
LINE_COUNT	= 21;
MEMORY_SIZE	= 1214;
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
   4:  ! Turn ON Vacuum Macro ;
   5:  ! Version 1.0 ;
   6:  !******************************** ;
   7:   ;
   8:  !Calls karel program for closing ;
   9:  !the valve specified by the ;
  10:  !arguments. ;
  11:   ;
  12:  !Arguments are valve numbers. ;
  13:   ;
  14:  !If no argument is given, the ;
  15:  !macro will use the current valve ;
  16:   ;
  17:  $DSBL_FAULT.$ENABLE=(1) ;
  18:  $RSMFST_SV.$FFAST_DSP=(0) ;
  19:  CALL MHVACON(AR[1],AR[2],AR[3],AR[4],AR[5],AR[6],AR[7],AR[8],AR[9],AR[10]) ;
  20:  $RSMFST_SV.$FFAST_DSP=(1) ;
  21:  $DSBL_FAULT.$ENABLE=(0) ;
/POS
/END
