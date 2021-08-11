/PROG  TW_PRS01
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "Press caps";
PROG_SIZE	= 678;
CREATE		= DATE 06-03-08  TIME 22:14:32;
MODIFIED	= DATE 06-03-08  TIME 22:15:24;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 17;
MEMORY_SIZE	= 990;
PROTECT		= READ_WRITE;
TCD:  STACK_SIZE	= 1024,
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
   1:  !PROGRAM NAME: TW_PRS01 ;
   2:  !Program function: ;
   3:  !  Compress caps after tip change ;
   4:   ;
   5:  !Note: see user screen for status ;
   6:  !information. ;
   7:   ;
   8:  !Parameters ;
   9:  !1: Equipment number ;
  10:  !2: Force end value (Kgf) ;
  11:  !3: Number of steps ;
  12:  !4: Number of repititions ;
  13:  !5: Dwell time (ms) ;
  14:  !6: Register number R[#] ;
  15:  !7: PrePress margin (mm) ;
  16:  !8: Max growth (mm) ;
  17:  CALL TW_PRSRT(1,500,2,4,1,10,5,15) ;
/POS
/END
