.LOGON 192.168.235.130/dbc,dbc; 
DATABASE dp_rdm;

CREATE MULTISET TABLE dp_rdm.TransactionHistory( 
TransactionID INTEGER,
ProductID INTEGER,
ReferenceOrderID INTEGER,
ReferenceOrderLineID SMALLINT,
TransactionDate DATE FORMAT 'MM/DD/YYYY',
TransactionType VARCHAR(8),
Quantity SMALLINT,
ActualCost DECIMAL(10,2)
)
PRIMARY INDEX ( TransactionID )
PARTITION BY RANGE_N(TransactionDate  BETWEEN DATE '2007-08-01' AND '2020-07-31' EACH INTERVAL '1' DAY );

INSERT INTO dp_rdm.TransactionHistory
SELECT * FROM  dp_stg2.TransactionHistory;


CREATE MULTISET TABLE DP_RDM.Culture 
AS dp_stg2.Culture
WITH DATA;


CREATE MULTISET TABLE DP_RDM.Location 
AS dp_stg2.Location
WITH DATA;


CREATE MULTISET TABLE DP_RDM.Product 
AS dp_stg2.Product
WITH DATA;

CREATE MULTISET TABLE DP_RDM.ProductCostHistory 
AS dp_stg2.ProductCostHistory
WITH DATA;


CREATE MULTISET TABLE DP_RDM.ProductDescription 
AS dp_stg2.ProductDescription
WITH DATA;


CREATE MULTISET TABLE DP_RDM.ProductInventory 
AS dp_stg2.ProductInventory
WITH DATA;


CREATE MULTISET TABLE DP_RDM.ProductListPriceHistory 
AS dp_stg2.ProductListPriceHistory
WITH DATA;


CREATE MULTISET TABLE DP_RDM.ProductModel 
AS dp_stg2.ProductModel
WITH DATA;


CREATE MULTISET TABLE DP_RDM.ProductModelProductDesctriptionCulture 
AS dp_stg2.ProductModelProductDesctriptionCulture
WITH DATA;


CREATE MULTISET TABLE DP_RDM.WorkOrder
AS dp_stg2.WorkOrder
WITH DATA;

CREATE MULTISET TABLE DP_RDM.WorkOrderRouting
AS dp_stg2.WorkOrderRouting
WITH DATA;

CREATE MULTISET TABLE DP_RDM.UnitMeasure
AS dp_stg2.UnitMeasure
WITH DATA;

CREATE MULTISET TABLE DP_RDM.ProductCategory 
AS dp_stg2.ProductCategory
WITH DATA;

CREATE MULTISET TABLE DP_RDM.ProductSubcategory 
AS dp_stg2.ProductSubcategory
WITH DATA;

CREATE MULTISET TABLE DP_RDM.ScrapReason
AS dp_stg2.ScrapReason
WITH DATA;

CREATE MULTISET TABLE DP_RDM.BillofMaterials
AS dp_stg2.BillofMaterials
WITH DATA;

.LOGOFF




