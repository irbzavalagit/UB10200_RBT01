/PROG  TW_PRSRT	  Macro
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "Press caps rt";
PROG_SIZE	= 1740;
CREATE		= DATE 06-03-08  TIME 22:14:24;
MODIFIED	= DATE 06-03-08  TIME 22:14:24;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 62;
MEMORY_SIZE	= 2140;
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
   1:  !PROGRAM NAME: TW_PRSRT ;
   2:  !Parameters: AR[] ;
   3:  !1: Equipment number ;
   4:  !2: Force end value (Kgf) ;
   5:  !3: Number of steps ;
   6:  !4: Number of repititions ;
   7:  !5: Dwell time (ms) ;
   8:  !6: Register number R[#] ;
   9:  !7: PrePress margin ;
  10:  !8: Max growth ;
  11:   ;
  12:  !1. RESET R[] REGISTER ;
  13:  R[AR[6]]=0    ;
  14:   ;
  15:  !TWKLSEAT is kl program that ;
  16:  !does the following: ;
  17:  !- load tw_libxx from memory ;
  18:  !- set postions, hdr of tw_libxx ;
  19:  !- set sysvars for press (P=99) ;
  20:  !- set R[] to execute tw_libxx ;
  21:   ;
  22:  !Note: ;
  23:  !Parm2.Parm9 required for Phase1 ;
  24:  !Parm2..Parm9 NOT supplied for ;
  25:  !Phase2 Phase3. ;
  26:   ;
  27:  !2. CALL TWKLSEAT ;
  28:  !Input parameters ;
  29:  !1: Phase number ;
  30:  !2: Register number R[#] ;
  31:  !3: Equipment number ;
  32:  !4: Force end value (Kgf) ;
  33:  !5: Number of steps ;
  34:  !6: Number of repititions ;
  35:  !7: Dwell time (ms) ;
  36:  !8: PrePress margin ;
  37:  !9: Max growth ;
  38:  CALL TWKLSEAT(1,AR[6],AR[1],AR[2],AR[3],AR[4],AR[5],AR[7],AR[8]) ;
  39:   ;
  40:  !3. MV TO PRE-PRS IF R[]=1 ;
  41:  IF R[AR[6]]<>1,JMP LBL[99] ;
  42:  !Move gun to pre-prs posn ;
  43:  CALL TW_LIBXX(1) ;
  44:   ;
  45:  !4. EXECUTE PRS, IF R[] = 2 ;
  46:  LBL[2] ;
  47:  CALL TWKLSEAT(2) ;
  48:  IF R[AR[6]]<>2,JMP LBL[3] ;
  49:  !Apply force ;
  50:  CALL TW_LIBXX(2) ;
  51:  !Move to pre-prs posn ;
  52:  CALL TW_LIBXX(1) ;
  53:  WAIT   0.00(sec) ;
  54:  JMP LBL[2] ;
  55:   ;
  56:  !5. Open gun ;
  57:  LBL[3] ;
  58:  CALL TW_LIBXX(3) ;
  59:  WAIT   0.00(sec) ;
  60:  CALL TWKLSEAT(3) ;
  61:   ;
  62:  LBL[99] ;
/POS
/END
