
@ECHO OFF
ECHO  -----------------------------------------------------------
ECHO                 Phase: 4 ..... Load tables to L3
ECHO  -----------------------------------------------------------
bteq < RDM_BTEQ_ALL.sql > .\logs\RDM_BTEQ_ALL.log


ECHO  -------------------------------------------------------------------------
ECHO               !!!!!!    SCRIPT COMPLETED COMPLETELY     !!!!!
ECHO                           Press any key to Finish
ECHO  -------------------------------------------------------------------------
pause