SELECT TOP (1000) [Continent]
      ,[Country_or_State]
      ,[Province_or_City]
      ,[Shop_Name]
      ,[Shop_Age]
      ,[PC_Make]
      ,[PC_Model]
      ,[Storage_Type]
      ,[Customer_Name]
      ,[Customer_Surname]
      ,[Customer_Contact_Number]
      ,[Customer_Email_Address]
      ,[Sales_Person_Name]
      ,[Sales_Person_Department]
      ,[Cost_Price]
      ,[Sale_Price]
      ,[Payment_Method]
      ,[Discount_Amount]
      ,[Purchase_Date]
      ,[Ship_Date]
      ,[Finance_Amount]
      ,[RAM]
      ,[Credit_Score]
      ,[Channel]
      ,[Priority]
      ,[Cost_of_Repairs]
      ,[Total_Sales_per_Employee]
      ,[PC_Market_Price]
      ,[Storage_Capacity]
  FROM [pc_data].[dbo].[raw_pc_data]

---1. Show all sales that were paid for using Finance.
SELECT * 
FROM [pc_data].[dbo].[raw_pc_data]
WHERE [Payment_Method] = 'Finance'

--2 Which customers bought online with a High priority order?
SELECT [Customer_Name]
      ,[Customer_Surname],
      [Priority],
      [Channel]
 FROM [pc_data].[dbo].[raw_pc_data]
 WHERE [Channel] = 'Online' AND [Priority] = 'High'

--3 List sales in Africa where the credit score was above 700.
SELECT *
FROM [pc_data].[dbo].[raw_pc_data]
WHERE  [Continent] = 'Africa' AND [Credit_Score] > 700
ORDER BY [Credit_Score]

--4 Show every PC sold for more than R20,000.
SELECT *
FROM [pc_data].[dbo].[raw_pc_data]
WHERE [Sale_Price] > 20000
ORDER BY [Sale_Price] DESC

--5 Which sales have no ship date (N/A) — not yet shipped?
SELECT *
FROM [pc_data].[dbo].[raw_pc_data]
WHERE [Ship_Date] = 'N/A' 

--6 Find all repairs handled by the Repairs department.
SELECT * 
FROM [pc_data].[dbo].[raw_pc_data]
WHERE [Sales_Person_Department] = 'Repairs'

--7 Show sales where we gave a discount of more than R500.
SELECT *
FROM [pc_data].[dbo].[raw_pc_data]
WHERE [Discount_Amount] > 500

--8 Which PCs were sold below their market price?
SELECT *
FROM [pc_data].[dbo].[raw_pc_data]
WHERE [Sale_Price] < [PC_Market_Price]

--9 List all customers whose surname starts with the letter "B".
SELECT *
FROM [pc_data].[dbo].[raw_pc_data]
WHERE [Customer_Name] Like 'B%'

--10 Show North America sales that were paid in Cash.
SELECT *
FROM [pc_data].[dbo].[raw_pc_data]
WHERE [Continent] = 'North America' AND [Payment_Method] = 'Cash'