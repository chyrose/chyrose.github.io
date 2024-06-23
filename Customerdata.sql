Select *
From [dbo].[Order$]

Select *
From [dbo].[Customer$]

Update dbo.Customer$
Set Salesman_ID = Null 
Where Customer_ID = '3004'

Select *
From [dbo].[Salesman$]


-- write a SQL query to find the salesperson and customer who reside in the same city. Return Salesman, cust_name and city.

Select S.[Name] As Salesman, C.Customer_Name, C.City, S.city
From [dbo].[Salesman$] As S
Join [dbo].[Customer$] As C
On S.Salesman_id =  C.Salesman_ID 
Where S.city = C.City


-- write a SQL query to find those orders where the order amount exists between 500 and 2000. Return ord_no, purch_amt, cust_name, city.

Select O.[Order Number], O.Purchase_Amount As Order_Amount, C.Customer_Name, C.City
From [dbo].[Order$] As O
Left Join [dbo].[Customer$] As C
On O.[Customer ID] = C.Customer_ID
Where Purchase_Amount Between 500 And 2000

/*Select O.[Order Number], O.Purchase_Amount As Order_Amount, C.Customer_Name, C.City
From [dbo].[Order$] As O
Left Join [dbo].[Customer$] As C
On O.[Customer ID] = C.Customer_ID
Where Purchase_Amount Between 500 And 2000

Why didn't alias Order_Amount work?
*/

-- write a SQL query to find the salesperson(s) and the customer(s) he represents. Return Customer Name, city, Salesman, commission.

Select C.Customer_Name, C.City, S.[Name] as Salesman, S.commission
From [dbo].[Customer$] As C
Left Join [dbo].[Salesman$] As S
On C.Salesman_ID = S.Salesman_id



-- write a SQL query to find salespeople who received commissions of more than 12 percent from the company. Return Customer Name, customer city, Salesman, commission.  
 
Select C.Customer_Name, C.City,S.Name, S.Commission
From [dbo].[Salesman$] As S
Join [dbo].[Customer$] AS C
On S.Salesman_id = C.Salesman_ID
Where S.[commission] > 0.12

-- write a SQL query to locate those salespeople who do not live in the same city where their customers live and have received a commission of more than 12% from the company. Return Customer Name, customer city, Salesman, salesman city, commission.  

Select C.Customer_Name, C.City, S.[Name] As Salesman, S.city, S.commission
From [dbo].[Salesman$] As S
Join [dbo].[Customer$] As C
On S.Salesman_id =  C.Salesman_ID 
Where (S.city != C.City) AND S.commission > 0.12


-- write a SQL query to find the details of an order. Return ord_no, ord_date, purch_amt, Customer Name, grade, Salesman, commission

Select O.[Order Number], O.[Order Date], O.Purchase_Amount, C.Customer_Name, C.Grade, S.Name as Salesman, S.commission
From [dbo].[Order$] As O
Join [dbo].[Customer$] As C
On O.Salesman_id = C.Salesman_ID 
Join [dbo].[Salesman$] As S
On O.Salesman_id = S.Salesman_id

-- Write a SQL statement to join the tables salesman, customer and orders so that the same column of each table appears once and only the relational rows are returned. 

Select O.*, C.Customer_Name, C.City As Customer_city, C.Grade, C.Salesman_ID, S.city as Salesman_city, S.commission
From [dbo].[Order$] As O
Join [dbo].[Customer$] As C
On O.Salesman_id = C.Salesman_ID 
Join [dbo].[Salesman$] As S
On O.Salesman_id = S.Salesman_id

-- write a SQL query to display the customer name, customer city, grade, salesman, salesman city. The results should be sorted by ascending customer_id.

Select C.Customer_Name, C.City As Customer_city, C.Grade, S.Name as Salesman, S.city as Salesman_city
From [dbo].[Customer$] As C
Join [dbo].[Salesman$] As S
On C.Salesman_id = C.Salesman_ID
Order by C.Customer_ID asc


-- write a SQL query to find those customers with a grade less than 300. Return cust_name, customer city, grade, Salesman, salesmancity. The result should be ordered by ascending customer_id.

Select C.Customer_Name, C.City As Customer_city, C.Grade, S.Name as Salesman, S.city as Salesman_city
From [dbo].[Customer$] As C
Join [dbo].[Salesman$] As S
On C.Salesman_id = C.Salesman_ID
Where C.Grade < 300

-- Write a SQL statement to make a report with customer name, city, order number, order date, and order amount in ascending order according to the order date to determine whether any of the existing customers have placed an order or not.
/********* Check *********/


Select C.Customer_Name, C.City As Customer_city, O.[Order Number], O.[Order Date], O.Purchase_Amount As [Order Amount], 
Case When O.[Order Number] > 1 Then 'Yes'
	Else 'No'
	End as Previous_Order
From [dbo].[Order$] As O
Join [dbo].[Customer$] As C
On O.Salesman_id = C.Salesman_ID 
Order by O.[Order Date]


-- SQL statement to generate a report with customer name, city, order number, order date, order amount, salesperson name, and commission to determine 
if any of the existing customers have not placed orders or if they have placed orders through their salesman or by themselves.

Select C.Customer_Name, C.City As Customer_city, O.[Order Number], O.[Order Date], O.Purchase_Amount, S.Name as Salesman, S.commission, C.Salesman_ID
From [dbo].[Customer$] As C
Left Join [dbo].[Order$] As O
On C.Customer_ID = O.[Customer ID]
Left Join [dbo].[Salesman$] As S
On S.Salesman_id = O.Salesman_id
