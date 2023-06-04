CREATE TABLE DimCustomer (
CustomerID INT NOT NULL PRIMARY KEY,
CostumerName VARCHAR(100) NOT NULL,
Age INT NOT NULL,
Gender VARCHAR(50) NOT NULL,
City VARCHAR(50) NOT NULL,
NoHP VARCHAR(50) NOT NULL
);

CREATE TABLE DimProduct (
ProductID INT NOT NULL PRIMARY KEY,
ProductName VARCHAR(225) NOT NULL,
ProductCategory VARCHAR(225) NOT NULL,
ProductUnitPrice INT NULL
);

CREATE TABLE DimStatusOrder (
StatusID INT NOT NULL PRIMARY KEY,
StatusOrder VARCHAR(50) NOT NULL,
StatusOrderDesc VARCHAR(50) NOT NULL
);

CREATE TABLE FactSalesOrder (
OrderID INT NOT NULL PRIMARY KEY,
CustomerID INT NOT NULL FOREIGN KEY REFERENCES DimCustomer(CustomerID),
ProductID INT NOT NULL FOREIGN KEY REFERENCES DimProduct(ProductID),
Quantity INT NOT NULL,
Amount INT NOT NULL,
StatusID INT NOT NULL FOREIGN KEY REFERENCES DimStatusOrder(StatusID),
OrderDate DATE NOT NULL
);