-- Ejemplo de carga de datos utilizando BULK INSERT
-- Debe tener archivos CSV listos (limpios)

-- Cargar datos en la tabla Precios
BULK INSERT BD_AMCDrinks.dbo.Precios
FROM 'C:\ruta\del\archivo\precios.csv' /*Reemplazar la ruta*/
WITH (
    FIELDTERMINATOR = ',',  -- Delimitador de campos
    ROWTERMINATOR = '\n',   -- Delimitador de filas
    FIRSTROW = 2,           -- Ignorar la fila de encabezado
    TABLOCK
);

-- Cargar datos en la tabla OrdenesCompra
BULK INSERT BD_AMCDrinks.dbo.OrdenesCompra
FROM 'C:\ruta\del\archivo\ordenescompra.csv'
WITH (
    FIELDTERMINATOR = ',',  
    ROWTERMINATOR = '\n',
    FIRSTROW = 2,
    TABLOCK
);

-- Cargar datos en la tabla InventarioInicial
BULK INSERT BD_AMCDrinks.dbo.InventarioInicial
FROM 'C:\ruta\del\archivo\inventarioinicial.csv'
WITH (
    FIELDTERMINATOR = ',',  
    ROWTERMINATOR = '\n',
    FIRSTROW = 2,
    TABLOCK
);

-- Cargar datos en la tabla InventarioFinal
BULK INSERT BD_AMCDrinks.dbo.InventarioFinal
FROM 'C:\ruta\del\archivo\inventariofinal.csv'
WITH (
    FIELDTERMINATOR = ',',  
    ROWTERMINATOR = '\n',
    FIRSTROW = 2,
    TABLOCK
);

-- Cargar datos en la tabla Ventas
BULK INSERT BD_AMCDrinks.dbo.Ventas
FROM 'C:\ruta\del\archivo\ventas.csv'
WITH (
    FIELDTERMINATOR = ',',  
    ROWTERMINATOR = '\n',
    FIRSTROW = 2,
    TABLOCK
);

-- Procedimiento almacenado para insertar datos en la tabla Compras
CREATE PROCEDURE InsertDataIntoCompras
    @InventoryId VARCHAR(50),
    @Store INT,
    @Brand INT,
    @Description VARCHAR(200),
    @Size VARCHAR(200),
    @VendorNumber INT,
    @VendorName VARCHAR(200),
    @PONumber INT,
    @PODate DATE,
    @ReceivingDate DATE,
    @InvoiceDate DATE,
    @PayDate DATE,
    @PurchasePrice DECIMAL(10,2),
    @Quantity INT,
    @Dollars DECIMAL(10,2)
AS
BEGIN
    -- Verificar si ya existe la compra
    IF NOT EXISTS (SELECT 1 FROM Compras WHERE InventoryId = @InventoryId AND PONumber = @PONumber)
    BEGIN
        -- Insertar la nueva compra
        INSERT INTO Compras (InventoryId, Store, Brand, Description, Size, VendorNumber, VendorName, PONumber, PODate, ReceivingDate, InvoiceDate, PayDate, PurchasePrice, Quantity, Dollars)
        VALUES (@InventoryId, @Store, @Brand, @Description, @Size, @VendorNumber, @VendorName, @PONumber, @PODate, @ReceivingDate, @InvoiceDate, @PayDate, @PurchasePrice, @Quantity, @Dollars);
    END;
END;


/* Notas

1. Procedimientos almacenados: Se creó un procedimiento para insertar datos en la tabla Compras con verificación para evitar duplicados.

2. Ejecución de procedimiento: Una vez creado el procedimiento almacenado, puedes ejecutarlo para insertar datos específicos. 

    EXEC InsertDataIntoCompras 'INV001', 1, 101, 'Cerveza', 'Lata', 1001, 'Proveedor A', 1, '2024-01-01', '2024-01-02', NULL, NULL, 15.00, 100, 1500.00;

*/