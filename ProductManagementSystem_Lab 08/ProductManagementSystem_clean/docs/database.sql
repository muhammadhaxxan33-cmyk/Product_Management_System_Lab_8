-- Reference schema reconstructed from the application code (ProductRepository / Product model).
-- Run only if the database does not already exist. If your existing table differs, keep yours.
IF DB_ID(N'BMS_DB') IS NULL CREATE DATABASE BMS_DB;
GO
USE BMS_DB;
GO
IF OBJECT_ID(N'dbo.products', N'U') IS NULL
CREATE TABLE dbo.products
(
    Id          INT IDENTITY(1,1) PRIMARY KEY,
    Title       VARCHAR(50)  NOT NULL,
    description VARCHAR(50)  NOT NULL,
    image       VARCHAR(255) NOT NULL,
    price       INT          NOT NULL,
    quantity    INT          NOT NULL,
    status      VARCHAR(100) NOT NULL
);
GO
