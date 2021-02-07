-- Tables Creation --

// Customer Table

CREATE TABLE Customer (
    Customer_id VARCHAR2(20) CONSTRAINT PK_customer PRIMARY KEY,
     Customer_Name VARCHAR2(20) CONSTRAINT name_notNull NOT NULL,
     Customer_Tel NUMBER(8),
);

// Product Table

CREATE TABLE Product (
    Product_id VARCHAR2(20) CONSTRAINT Pk_product PRIMARY KEY,
    Product_Name VARCHAR2(20) CONSTRAINT name_notNull NOT NULL,
    Price NUMBER(6,2)
);

// Orders Table

CREATE TABLE Orders (
    Customer_id VARCHAR2(20) CONSTRAINT Fk_customer FOREIGN KEY REFERENCES Customer(Customer_id),
    Product_id VARCHAR2(20) CONSTRAINT Fk_product FOREIGN KEY REFERENCES Product(Product_id),
    Quantity NUMBER(10),
    Total_amount NUMBER(10,2),
    CONSTRAINT Pk_orders PRIMARY KEY (Customer_id,Product_id)
)

// Add a column Category to Product Table

ALTER TABLE Product ADD Category VARCHAR2(20);

// Add a column OrderDate to ORDERS Table

ALTER TABLE Orders ADD OrderDate DATE DEFAULT SYSDATE;
