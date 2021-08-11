/PROG  OKTOPICK	  Macro
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "ChkOKtoPick V1.0";
PROG_SIZE	= 1070;
CREATE		= DATE 21-07-09  TIME 07:31:56;
MODIFIED	= DATE 21-07-09  TIME 07:31:56;
FILE_NAME	= OKTOPICK;
VERSION		= 10;
LINE_COUNT	= 26;
MEMORY_SIZE	= 1378;
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
   4:  ! Prepare to Pick Macro ;
   5:  ! Version 1.0 ;
   6:  !******************************** ;
   7:   ;
   8:  !Calls karel program for checking ;
   9:  !the valves specified by calling ;
  10:  !chkgrcls to check clamps or ;
  11:  !vacuum inputs and chkpart to ;
  12:  !check part present inputs. ;
  13:   ;
  14:  !Also calls clr2prcd to check ;
  15:  !any user specified criteria. ;
  16:   ;
  17:  !Arguments are valve numbers. ;
  18:   ;
  19:  !If no argument is given, the ;
  20:  !macro will use the current valve ;
  21:   ;
  22:  $DSBL_FAULT.$ENABLE=(1) ;
  23:  $RSMFST_SV.$FFAST_DSP=(0) ;
  24:  CALL MHOKPICK(AR[1],AR[2],AR[3],AR[4],AR[5],AR[6],AR[7],AR[8],AR[9],AR[10]) ;
  25:  $RSMFST_SV.$FFAST_DSP=(1) ;
  26:  $DSBL_FAULT.$ENABLE=(0) ;
/POS
/END
