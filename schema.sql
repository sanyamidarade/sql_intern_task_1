-- E-commerce Database Schema

CREATE TABLE Customer (
    Id CHAR(10) PRIMARY KEY,
    Username VARCHAR(50),
    Email VARCHAR(100)
);

CREATE TABLE Product (
    Id CHAR(10) PRIMARY KEY,
    ProductTypeId CHAR(10),
    Name VARCHAR(100),
    ShortDescription VARCHAR(255)
);

CREATE TABLE Category (
    Id CHAR(10) PRIMARY KEY,
    MetaDescription VARCHAR(255),
    MetaTitle VARCHAR(100),
    PageSize CHAR(3)
);

CREATE TABLE Product_Category_Map (
    Id CHAR(10) PRIMARY KEY,
    ProductId CHAR(10),
    CategoryId CHAR(10),
    IsFeaturedProduct CHAR(5),
    DisplayOrder CHAR(3),
    FOREIGN KEY (ProductId) REFERENCES Product(Id),
    FOREIGN KEY (CategoryId) REFERENCES Category(Id)
);

CREATE TABLE Ordertable(
    Id CHAR(10) PRIMARY KEY,
    StoreId CHAR(10),
    CustomerId CHAR(10),
    BillingAddressId CHAR(10),
    ShippingAddressId CHAR(10),
    FOREIGN KEY (CustomerId) REFERENCES Customer(Id)
);

CREATE TABLE OrderItem (
    Id CHAR(10) PRIMARY KEY,
    OrderId CHAR(10),
    ProductId CHAR(10),
    Quantity CHAR(5),
    FOREIGN KEY (OrderId) REFERENCES Ordertable(Id),
    FOREIGN KEY (ProductId) REFERENCES Product(Id)
);

CREATE TABLE ProductReview (
    Id CHAR(10) PRIMARY KEY,
    CustomerId CHAR(10),
    ProductId CHAR(10),
    StoreId CHAR(10),
    Title VARCHAR(100),
    ReviewText TEXT,
    FOREIGN KEY (CustomerId) REFERENCES Customer(Id),
    FOREIGN KEY (ProductId) REFERENCES Product(Id)
);

CREATE TABLE Shipment (
    Id CHAR(10) PRIMARY KEY,
    OrderId CHAR(10),
    TrackingNumber VARCHAR(50),
    TotalWeight CHAR(10),
    ShippedDateUtc DATE,
    FOREIGN KEY (OrderId) REFERENCES Ordertable(Id)
);

CREATE TABLE ShipmentItem (
    Id CHAR(10) PRIMARY KEY,
    ShipmentId CHAR(10),
    OrderItemId CHAR(10),
    FOREIGN KEY (ShipmentId) REFERENCES Shipment(Id),
    FOREIGN KEY (OrderItemId) REFERENCES OrderItem(Id)
);

CREATE TABLE Warehouse (
    Id CHAR(10) PRIMARY KEY,
    Name VARCHAR(100),
    AdminComment TEXT,
    AddressId CHAR(10)
);
