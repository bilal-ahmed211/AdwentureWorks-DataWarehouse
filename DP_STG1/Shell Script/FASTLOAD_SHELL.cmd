@ECHO OFF
ECHO  -----------------------------------------------------------
ECHO                 Phase: 1 ..... Fastload Start
ECHO  -----------------------------------------------------------
fastload < 15_Customer_Sales.fld
fastload < 16_SalesTaxRate_Sales.fld
fastload < 17_ShoppingCartItem_Sales.fld
fastload < 18_Store_Sales.fld
fastload < BillOfMaterials_Production.fld
fastload < HR.fld
fastload < Person.fld
fastload < Production.fld
fastload < Purchase.fld
fastload < Sales 2.fld
fastload < Sales 3 new.fld
fastload < Sales.fld
fastload < Sales_April1_10.fld
fastload < Sales_April11_20.fld
fastload < Sales_April21_30.fld
fastload < Sales_May06_10.fld
fastload < Sales_May11_20.fld
fastload < Sales_May21_31.fld
fastload < ScrapReason_Production.fld 
fastload < UnitMeasure_Production.fld 
fastload < WorkOrder_Production.fld 
fastload < WorkOrderRouting_Production.fld 


ECHO  -------------------------------------------------------------------------
ECHO               !!!!!!    SCRIPT COMPLTED COMPLETELY     !!!!!
ECHO                           Press any key to Finish
ECHO  -------------------------------------------------------------------------
pause