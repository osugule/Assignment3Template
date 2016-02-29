MARK BREAK DOWN:
AdminPage.aspx(3):			17 MARKS TOTAL
AdminPage.aspx(4):			1 BONUS MARK TOTAL
CartPage.aspx(3):			17 MARKS TOTAL
CartPage.aspx(4):			1 BONUS MARK TOTAL
Install.sql(1):				30 MARKS TOTAL
Login.aspx(3):				7 MARKS TOTAL
MainMaster.Master(11):		9 MARKS TOTAL
MainMaster.Master(12):		2 BONUS MARKS TOTAL
ProductsPage.aspx(5):		4 MARKS TOTAL
ProductsPage.aspx(6):		1 BONUS MARK TOTAL
ProductsPage.aspx.cs(12):	5 MARKS TOTAL
ProductsPage.aspx.cs(13):	1 BONUS MARK TOTAL
Customer.cs(12):			4 BONUS MARKS TOTAL
Product.cs(11):				6 MARKS TOTAL
ShoppingCart.cs(12):		15 MARKS TOTAL

Additional (TODO) Optional Extras: 10 BONUS MARKS 
- 3 BONUS MARKS PER PAGE. Use the GridView Wizard to create Admin Screens for: Product and Customer
- 2 BONUS MARKS PER PAGE. Use the Class Methods for the CRUD in the wizard above 

110 REGULAR MARKS
20 BONUS MARKS


-- 30 MARKS TOTAL

-- TODO: Database

-- Complete these tables (3 marks), 
-- inserts (1 mark) 
-- stored procedures (20 marks total)
-- reports (6 marks)

CREATE TABLE tbCustomer -- AccessLevel is a BIT, 1 is admin, 0 is not an admin
CREATE TABLE tbCategory
CREATE TABLE tbProduct -- there are many products in a single category
CREATE TABLE tbOrder -- an order happens on a date by a customer
CREATE TABLE tbOrderDetail -- there can be many details in an order, each detail contains the product purchased, the price paid at the time for the product multiplied by the quantity

INSERT INTO tbCustomer -- 5, 1 admin, 4 non-admins
INSERT INTO tbCategory -- 4 categories
INSERT INTO tbProduct  -- 6 products in category one, 3 products in category two, 1 in category three
INSERT INTO tbOrder    -- 3 example orders from the non-admins
INSERT INTO tbOrderDetail -- one item on the first order, 3 items on the second order, 2 items on the third order

-- NOTE: All Insert procs *MUST* return the new identity number of the primary key.
-- Example: if you use spInsertCategory after there are 4 categories, it should return the value 5.
-- If a procedure says: ByID, it means return ALL rows in the table if an ID is not supplied (ISNULL)

spGetCategoryByID
spInsertCategory
spDeleteCategory
spUpdateCategory

spLogin
spGetCustomerByID
spInsertCustomer
spDeleteCustomer
spUpdateCustomer

spGetProductsByCategoryID
spGetProductByID
spInsertProduct
spDeleteProduct
spUpdateProduct

spGetOrderByID
spInsertOrder
spDeleteOrder
spUpdateOrder

spGetOrderDetailByID
spInsertOrderDetail
spDeleteOrderDetail
spUpdateOrderDetail
spGetOrderAndDetailsByOrderID -- Show all Details based on the OrderID


-- Create these reports:
1. Top 3 Customers for TOTAL spent among all orders
2. Show each category and how many products are available in each
3. Show the products listed by total amount paid (take into consideration quantity & price)
