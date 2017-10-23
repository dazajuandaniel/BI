/* Total Orders */
select count(*) as TotalOrders from Sales.Orders;

/* Customers who bought the most? */
select  top 5 c.CustomerName, count(c.CustomerName) as TotalSales 
	from Sales.orders o 
	inner join sales.Customers c 
	on o.CustomerID = c.CustomerID
	group by c.CustomerName
	order by TotalSales desc;

/* Best Sales Person?*/
select p.FullName, count(p.FullName) as totalSales from Application.People p inner join Sales.Orders o 
on p.PersonID = o.SalespersonPersonID
group by p.FullName
order by totalSales desc;

/* Total Sales Persons? */
select count(*) from Application.People p where p.IsSalesperson = 1

/* Top Used Payment Method? */
select pm.PaymentMethodName,pm.PaymentMethodID,count(1) as TotalCount from sales.CustomerTransactions ct left join Application.PaymentMethods pm 
on ct.PaymentMethodID = pm.PaymentMethodID  
group by pm.PaymentMethodID , pm.PaymentMethodName
order by count(1) desc

/* Most Profitable Item */
select si.StockItemName, sum(il.Quantity*il.UnitPrice) as Income,sum(il.Quantity*si.UnitPrice) as Cost
from Sales.InvoiceLines il inner join Warehouse.StockItems si on il.StockItemID = si.StockItemID
group by si.StockItemName
order by Income desc

select * from Warehouse.StockItems where StockItemID = 67
select * from sales.OrderLines
select * from sales.Orders
select * from Purchasing.PurchaseOrderLines
select * from sales.InvoiceLines
select * from Warehouse.StockItemTransactions

/**/
select * from Application.People
select * from Sales.OrderLines





group by where CustomerCategoryID = 1
select * from sales.CustomerCategories
select * from Application.PaymentMethods



select (Quantity) from sales.OrderLines where OrderID =2
select OrderID, sum(Quantity * UnitPrice ) from sales.OrderLines group by OrderID order by OrderID
select * from sales.OrderLines order by OrderID

