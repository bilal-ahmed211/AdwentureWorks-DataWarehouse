.LOGON 192.168.235.130/DBC,DBC;

CREATE MULTISET TABLE dp_rdm.Vendor 
AS dp_stg2.Vendor
WITH DATA;


CREATE MULTISET TABLE dp_rdm.ShipMethod 
AS dp_stg2.ShipMethod
WITH DATA;


CREATE MULTISET TABLE dp_rdm.ProductVendor 
AS dp_stg2.ProductVendor
WITH DATA;

--Partitioned_Tables

CREATE MULTISET TABLE dp_rdm.PurchaseOrderHeader ( 
 PurchaseOrderID INTEGER,
		   ShipMethodID INTEGER,
		   VendorID INTEGER,
		   RevisionNumber INTEGER,
		   Status INTEGER,
		   EmployeeID INTEGER,
		   OrderDate DATE FORMAT 'MM/DD/YYYY',
		   ShipDate DATE FORMAT 'MM/DD/YYYY',
		   SubTotal DECIMAL(9,2),
		   TaxAmt DECIMAL(7,2),
		   Freight DECIMAL(7,2),
		   TotalDue DECIMAL(9,2)
)
PRIMARY INDEX(PurchaseOrderID)
PARTITION BY RANGE_N(OrderDate  BETWEEN DATE '2005-01-01' AND '2020-12-31' EACH INTERVAL '1' DAY );

INSERT INTO dp_rdm.PurchaseOrderHeader
SELECT * FROM  dp_stg2.PurchaseOrderHeader ;


CREATE MULTISET TABLE dp_rdm.PurchaseOrderDetail ( 
       PurchaseOrderID INTEGER,
           PurchaseOrderDetailID INTEGER,
		   DueDate DATE FORMAT 'MM/DD/YYYY',
		   ProductID INTEGER,
		   OrderQty INTEGER,
		   UnitPrice DECIMAL(7,2),
		   LineTotal DECIMAL(9,2),
		   ReceivedQty INTEGER,
		   RejectedQty INTEGER,
		   StockedQty INTEGER
)
PRIMARY INDEX(PurchaseOrderID,PurchaseOrderDetailID)
PARTITION BY ProductID;

INSERT INTO dp_rdm.PurchaseOrderDetail
SELECT * FROM  dp_stg2.PurchaseOrderDetail;
.LOGOFF;

