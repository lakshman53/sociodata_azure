create view vEmployee as
SELECT        Employee.EmpId, Employee.EmpNum, Employee.FirstName, Employee.MiddleName, Employee.LastName, Designation.Designation, Store.StoreName, Store.Address, Area.Area, City.City, Region.Region, cast(StoreOpen as varchar(5)) StoreOpen,  cast(StoreClose as varchar(5)) StoreClose
 FROM            Employee INNER JOIN
                         Designation ON Employee.Designation = Designation.DesignationId INNER JOIN
                         Store ON Employee.StoreId = Store.StoreId INNER JOIN
                         Area ON Store.Area = Area.AreaId INNER JOIN
                         City ON Store.City = City.CityId 
						 INNER JOIN                          Region ON Store.Region = Region.RegionId
