use AdventureWorks2019 

--name:or larian


with cte_l
as
(
select pp.ProductID ,pp.Name as Productname ,pp.Color ,pp.ListPrice ,pp.Size , COUNT (ss.SalesOrderID )over(PARTITION BY pp.ProductID )as a
from Production.Product as pp left join   Sales.SalesOrderDetail as ss
on pp.ProductID =ss.ProductID 
)
select cte_l .ProductID ,cte_l .Productname  ,cte_l .Color ,cte_l .ListPrice ,cte_l.Size 
from cte_l 
where cte_l. a =0
--question 1





with cte_b
as
(
select s.customerID ,s.PersonID 
from  Sales.Customer as s
where s.PersonID is null 
)
select c.CustomerID ,isnull(p.LastName, 'Unknown' )as LastName ,isnull(p.FirstName , 'Unknown' ) as FirstName 
from cte_b  as c left join Person.Person as p 
on p.BusinessEntityID = c.CustomerID
where ( p.lastname is not null)  or (p.MiddleName is null  ) 
order by c.CustomerID 

--question 2


select  DISTINCT top 10 sc.CustomerID , pp.FirstName ,pp.LastName ,COUNT (cc.SalesOrderID   )over(PARTITION BY sc.CustomerID)as countoforders
from Person.Person as pp join Sales.Customer as sc 
on pp.BusinessEntityID  =sc.CustomerID 
 join Sales .SalesOrderHeader  as cc
 on cc.CustomerID  =sc.CustomerID 
 order by countoforders desc
 --question 3



select p.FirstName ,p.LastName ,h.JobTitle ,h.HireDate ,COUNT (h.BusinessEntityID )over(PARTITION BY h.JobTitle)as countoftitle
from HumanResources.Employee  as h join Person.Person as p
 on h.BusinessEntityID =p.BusinessEntityID
--question 4




select cc.SalesOrderID ,cc .CustomerID ,cc.LastName ,cc.FirstName ,cc.OrderDate as lastOrder ,cc.c as previousOrder
 from (
select pp.FirstName ,pp.LastName , a.SalesOrderID ,a.OrderDate ,a.CustomerID ,LEAD (a.OrderDate ,1)over(partition by a.CustomerID order by a.OrderDate desc) as c
,RANK ()over(partition by a.CustomerID order by a.OrderDate desc) as bbb
from Person.Person as pp right  join  Sales.Customer as b
on pp.BusinessEntityID =b.CustomerID 
 right join Sales .SalesOrderHeader as a
on b.CustomerID =a.CustomerID 
)cc
where cc.bbb =1

--question 5






with cte_gj
as(
select year (s.ModifiedDate )as year,MONTH (s.ModifiedDate )as MONTH,s.SalesOrderID 
from Sales.SalesOrderDetail   as s
)
select*
from (
select  DISTINCT *
from cte_gj as b)as piv
 pivot(count (piv.  SalesOrderID )for piv.year in([2011],[2012],[2013],[2014]))as vv
 order by MONTH 
 --question 6











 SELECT HA.HireDate ,AA.DepartmentID ,STRING_AGG  (concat( HA.BusinessEntityID , ' ' , PP.FIRSTNAME , ' ' , PP.LastName  ),' , ' ) AS tememployees
FROM HumanResources.Employee AS HA JOIN HumanResources.EmployeeDepartmentHistory AS AA
ON HA.BusinessEntityID =AA.BusinessEntityID
 JOIN HumanResources.Department AS O
 ON O.DepartmentID =AA.DepartmentID 
 JOIN Person .Person AS PP
 ON PP.BusinessEntityID =HA.BusinessEntityID 
 GROUP BY HA.HireDate ,AA.DepartmentID
 ORDER BY HA.HireDate DESC
--question 7