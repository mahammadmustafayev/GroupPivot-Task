

select 
       S.CompanyName,
	   S.ContactName,
	   P.ProductName,
	   P.UnitPrice,
	   C.CategoryName
	 from Shippers Sh
     inner join Suppliers S on Sh.ShipperID=S.SupplierID
	 inner join Products P on p.SupplierID=S.SupplierID
	 inner join Categories C on c.CategoryID=P.CategoryID
	 order by Sh.CompanyName


select * from (select C.CategoryName,COUNT(*) as [Number] from Products P
  inner join Categories C on P.CategoryID=C.CategoryID
 Group by CategoryName) as tbl
 Pivot(
    Sum(Number)
	for CategoryName in (Categories)
   
 ) as pvt



