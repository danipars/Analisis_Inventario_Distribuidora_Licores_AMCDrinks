CREATE DATABASE BD_AMCDrinks;
  
USE BD_AMCDrinks;

-- creacion de la tabla Precios.
CREATE TABLE Precios (
	Brand INT PRIMARY KEY,
	Description VARCHAR(200) NOT NULL,
	Price DECIMAL(10,2) NOT NULL,
	Size VARCHAR(200),
	Volume INT NOT NULL,
	Classification INT,
	PurchasePrice DECIMAL(10,2) NOT NULL,
	VendorNumber INT,
	VendorName VARCHAR(200));

/*Considerar cambiar el nombre de la columna Brand a BrandId para hacer mas claro el identificador unico. De igual manera para las demas PK.*/

-- creacion de la tabla OrdenesCompra.
CREATE TABLE OrdenesCompra(
	VendorNumber INT,
	VendorName VARCHAR(200),
	InvoiceDate DATE,
	PONumber INT PRIMARY KEY,
	PODate DATE NOT NULL,
	PayDate DATE,
	Quantity INT NOT NULL,
	Dollars DECIMAL(10,2) NOT NULL,
	Freight DECIMAL(10,2) NOT NULL,
	Approval VARCHAR(200));

/*VendedorNumber y VendorName se repiten en varias tablas, si tiene mas detalles podria separarse en (Proveedores o Vendors) y referencias la tabla desde Precios y otras tablas. */

    -- creacion de la tabla InventarioInicial.
CREATE TABLE InventarioInicial(
	InventoryId VARCHAR(50) PRIMARY KEY,
	Store INT NOT NULL,
	City VARCHAR(50) NOT NULL,
	Brand INT NOT NULL,
	Description VARCHAR(200),
	Size VARCHAR(200),
	onHand INT NOT NULL,
	Price DECIMAL(10,2),
	startDate DATE NOT NULL);

	-- creacion de la tabla InventarioFinal.
CREATE TABLE InventarioFinal(
	InventoryId VARCHAR(50) PRIMARY KEY,
	Store INT NOT NULL,
	City VARCHAR(50) NOT NULL,
	Brand INT NOT NULL,
	Description VARCHAR(200),
	Size VARCHAR(200),
	onHand INT NOT NULL,
	Price DECIMAL(10,2),
	endDate DATE NOT NULL);

	-- creacion de la tabla Compras.
CREATE TABLE Compras(
	InventoryId VARCHAR(50) NOT NULL,
	Store INT NOT NULL,
	Brand INT NOT NULL,
	Description VARCHAR(200),
	Size VARCHAR(200),
	VendorNumber INT,
	VendorName VARCHAR(200),
	PONumber INT NOT NULL,
	PODate DATE,
	ReceivingDate DATE NOT NULL,
	InvoiceDate DATE,
	PayDate DATE,
	PurchasePrice DECIMAL(10,2),
	Quantity INT NOT NULL,
	Dollars DECIMAL(10,2),
	Classification VARCHAR(50),
	Id_Compras INT IDENTITY (1,1) PRIMARY KEY);


	-- creacion de la tabla Ventas.
CREATE TABLE Ventas(
	InventoryId VARCHAR(50) NOT NULL,
	Store INT NOT NULL,
	Brand INT NOT NULL,
	Description VARCHAR(200),
	Size VARCHAR(200),
	SalesQuantity INT NOT NULL,
	SalesDollars DECIMAL(10,2),
	SalesPrice DECIMAL(10,2),
	SalesDate DATE NOT NULL,
	Volume INT,
	Classification VARCHAR(50),
	ExciseTax DECIMAL(10,2) NOT NULL,
	VendorNo INT,
	VendorName VARCHAR(200),
	Id_Ventas INT IDENTITY (1,1) PRIMARY KEY);

/* Tabla compras y ventas, VendorNumber y VendorName  & VendorNo y VendorName, podrian normalizarse si hay una tabla de proveedores y agregar restricciones de clave externa en las columnas.

CREATE TABLE Proveedores (
    VendorNumber INT PRIMARY KEY,
    VendorName VARCHAR(200) NOT NULL

	ALTER TABLE Compras
ADD CONSTRAINT FK_Compras_Proveedores
FOREIGN KEY (VendorNumber) REFERENCES Proveedores(VendorNumber);

con el fin de: Eliminar redundancias, Consistencia de datos, Facilidad de actualización (en un cambio de proveedor)
);*/


------------------------------------------------------------------
-- GENERAR LAS RELACIONES
------------------------------------------------------------------

-- Generar Relacion entre Compras y OrdenesCompra
ALTER TABLE Compras
ADD CONSTRAINT Fk_Compras_OrdenesCompra
FOREIGN KEY(PONumber) REFERENCES OrdenesCompra(PONumber);  

-- Generar Relacion entre Compras y Precios
ALTER TABLE Compras
ADD CONSTRAINT Fk_Compras_Precios
FOREIGN KEY(Brand) REFERENCES Precios(Brand);  

-- Generar Relacion entre Compras y InventarioInicial
ALTER TABLE Compras
ADD CONSTRAINT Fk_Compras_InventarioInicial
FOREIGN KEY(InventoryId) REFERENCES InventarioInicial(InventoryId);  

-- Generar Relacion entre Ventas y InventarioFinal
ALTER TABLE Ventas
ADD CONSTRAINT Fk_Ventas_InventarioFinal
FOREIGN KEY(InventoryId) REFERENCES InventarioFinal(InventoryId);  

-- Generar Relacion entre Ventas y Precios
ALTER TABLE Ventas
ADD CONSTRAINT Fk_Ventas_Precios
FOREIGN KEY(Brand) REFERENCES Precios(Brand);  

-- Generar Relacion entre InventarioInicial y Precios
ALTER TABLE InventarioInicial
ADD CONSTRAINT Fk_InventarioInicial_Precios
FOREIGN KEY(Brand) REFERENCES Precios(Brand); 

-- Generar Relacion entre InventarioFinal y Precios
ALTER TABLE InventarioFinal
ADD CONSTRAINT Fk_InventarioFinal_Precios
FOREIGN KEY(Brand) REFERENCES Precios(Brand); 