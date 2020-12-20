.LOGON 192.168.235.130 /dbc,dbc;
DATABASE DP_RDM;
CREATE MULTISET TABLE DP_RDM.Employee AS DP_STG2.Employee WITH DATA;

CREATE MULTISET TABLE Dp_RDM.Department
(
            DepartmentID INTEGER ,
			DepartmentName VARCHAR(32),
			GroupName VARCHAR(32)
)

UNIQUE PRIMARY INDEX (DepartmentID);
INSERT INTO DP_RDM.Department
Select *
From DP_STG2.Department;

CREATE MULTISET TABLE DP_RDM.EmployeeDepartmentHistory AS DP_STG2.EmployeeDepartmentHistory WITH DATA;

CREATE MULTISET TABLE DP_RDM.Shift 
     (
      ShiftID INTEGER ,
      Name1 CHAR(8) CHARACTER SET LATIN NOT CASESPECIFIC,
      StartTime TIME(6),
      EndTime TIME(6))
UNIQUE PRIMARY INDEX ( ShiftID );

INSERT INTO DP_RDM.Shift
Select *
FROM DP_STG2.Shift;

.LOGOFF;