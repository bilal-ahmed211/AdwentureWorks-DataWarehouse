@ECHO OFF
ECHO  -----------------------------------------------------------
ECHO                 Phase: 2 ..... L2 DDL --> BTEQ-Create 
ECHO  -----------------------------------------------------------
bteq < STG2_DDL_BTEQS_ALL.sql > .\logs\STG2_DDL_BTEQS_ALL.log


ECHO  -------------------------------------------------------------------------
ECHO            Phase: 3 ... L2 DML --> BTEQ-Create
ECHO  -------------------------------------------------------------------------
bteq < STG2_DML_BTEQS_ALL.sql > .\logs\STG2_DML_BTEQS_ALL.log

ECHO  -------------------------------------------------------------------------
ECHO               !!!!!!    SCRIPT COMPLTED COMPLETELY     !!!!!
ECHO                           Press any key to Finish
ECHO  -------------------------------------------------------------------------
PAUSE