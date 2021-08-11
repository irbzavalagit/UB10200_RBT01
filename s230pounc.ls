/PROG  S230POUNC
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "Maint Pounce";
PROG_SIZE	= 775;
CREATE		= DATE 21-07-09  TIME 07:32:00;
MODIFIED	= DATE 21-07-25  TIME 23:37:26;
FILE_NAME	= SXXPOUNC;
VERSION		= 20;
LINE_COUNT	= 26;
MEMORY_SIZE	= 1043;
PROTECT		= READ_WRITE;
TCD:  STACK_SIZE	= 0,
      TASK_PRIORITY	= 50,
      TIME_SLICE	= 0,
      BUSY_LAMP_OFF	= 0,
      ABORT_REQUEST	= 0,
      PAUSE_REQUEST	= 0;
DEFAULT_GROUP	= 1,*,*,*,*;
CONTROL_CODE	= 00000000 00000000;
/APPL

AUTO_SINGULARITY_HEADER;
  ENABLE_SINGULARITY_AVOIDANCE   : FALSE;
/MN
   1:  !******************************** ;
   2:  ! RIVIAN AUTOMOTIVE ;
   3:  ! Robot: xxxxxxxx ;
   4:  ! Model: xxxxxxxx ;
   5:  ! Assembly: xxxxxxxx ;
   6:  !******************************** ;
   7:  ! Template Maint Pounce ;
   8:  ! Version 2.1 ;
   9:  !******************************** ;
  10:   ;
  11:  !Move To Pounce Path ;
  12:  SET PATH(1) ;
  13:   ;
  14:  Rec Path Start    ;
  15:   ;
  16:  !Put Frame Description ;
  17:  UFRAME_NUM=0 ;
  18:  !Put Utool Description ;
  19:  UTOOL_NUM=1 ;
  20:  !Put Payload Description ;
  21:  PAYLOAD[1:SSW1] ;
  22:   ;
  23:J PR[2:@Pounce] 80% FINE    ;
  24:   ;
  25:  AT POUNCE    ;
  26:   ;
/POS
/END
