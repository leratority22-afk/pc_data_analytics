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
  FROM [pc_data].[dbo].[pc_data_v1]


--  1 Show all sales ranked from the most expensive to the cheapest.
SELECT * 
FROM [pc_data].[dbo].[pc_data_v1]
ORDER BY [Sale_Price] DESC

--2 List our shops from newest to oldest based on shop age.
SELECT [Shop_Name],
     [Shop_Age]
FROM [pc_data].[dbo].[pc_data_v1]
ORDER BY [Shop_Age] ASC

--3 Rank customers by credit score, highest first.
SELECT  [Customer_Name]
      ,[Customer_Surname]
      ,[Credit_Score]
FROM [pc_data].[dbo].[pc_data_v1]
ORDER BY [Credit_Score] DESC

--4 Show all sales ordered by purchase date, most recent first.
SELECT * 
FROM [pc_data].[dbo].[pc_data_v1]
ORDER BY [Purchase_Date] DESC

--5 List every sale by discount amount, biggest discount first.
SELECT *
FROM [pc_data].[dbo].[pc_data_v1]
ORDER BY [Discount_Amount] DESC

--6 Rank PCs by profit, most profitable first.
      
SELECT [Sale_Price],
       [Cost_Price],
([Sale_Price] -[Cost_Price]) 
    AS Profit 
FROM [pc_data].[dbo].[pc_data_v1]
ORDER BY Profit DESC

--7 Show finance deals ordered by finance amount, largest first.
SELECT *
FROM [pc_data].[dbo].[pc_data_v1]
WHERE [Payment_Method] = 'Finance' 
ORDER BY Finance_Amount DESC

--8 List sales people alphabetically by surname, then name.
SELECT [Sales_Person_Name]
FROM [pc_data].[dbo].[pc_data_v1]
ORDER BY [Sales_Person_Name] ASC

--9 Order sales by cost of repairs, most expensive first.
SELECT *
FROM [pc_data].[dbo].[pc_data_v1]
ORDER BY [Cost_of_Repairs] ASC

--10 Sort sales by continent, then by country within each continent.
SELECT *
FROM [pc_data].[dbo].[pc_data_v1]
ORDER BY [Continent] ASC ,  [Country_or_State] ASC