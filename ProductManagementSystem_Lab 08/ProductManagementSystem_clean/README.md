# Product Management System

ASP.NET Core Razor Pages application (.NET 10) for managing products (create, list, view, edit, delete) with image upload, backed by SQL Server via ADO.NET (`Microsoft.Data.SqlClient`).

## Project structure

```
ProductManagementSystem/
├── Product_Management_System_Lab_8.slnx
├── docs/
│   └── database.sql                      Reference schema for the products table
└── src/
    └── Product_Management_System_Lab_8/
        ├── Data/                         ProductRepository (SQL access)
        ├── Models/                       Product
        ├── Services/                     ProductImageService (validate/save/delete uploads)
        ├── Pages/
        │   ├── Products/                 Index, Create, Details, Edit, Delete
        │   └── Shared/                   Layout and validation scripts
        ├── Properties/                   launchSettings.json
        ├── wwwroot/                      css, js, lib (Bootstrap, jQuery), images/products
        ├── appsettings.json
        └── Program.cs
```

## Getting started

1. Install the .NET 10 SDK and SQL Server LocalDB (included with Visual Studio).
2. Create the database: run `docs/database.sql` (or use your existing `BMS_DB`).
3. Check the connection string in `src/Product_Management_System_Lab_8/appsettings.json` (`DefaultConnection`).
4. Run:

   ```
   dotnet run --project src/Product_Management_System_Lab_8
   ```

   or open `Product_Management_System_Lab_8.slnx` in Visual Studio and press F5.

Uploaded images are stored in `wwwroot/images/products/`.
