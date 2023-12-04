--
-- Файл сгенерирован с помощью SQLiteStudio v3.4.4 в Пн дек 4 21:26:20 2023
--
-- Использованная кодировка текста: UTF-8
--
PRAGMA foreign_keys = off;
BEGIN TRANSACTION;

-- Таблица: Availability
CREATE TABLE IF NOT EXISTS Availability
(
    ProductID INTEGER,
    Quantity  INTEGER DEFAULT (0),
    StoreID   INTEGER,
    FOREIGN KEY (ProductID) REFERENCES Products (ID),
    FOREIGN KEY (StoreID) REFERENCES Stores (ID)
);
INSERT INTO Availability (ProductID, Quantity, StoreID) VALUES (1, 6, 1);
INSERT INTO Availability (ProductID, Quantity, StoreID) VALUES (1, 9, 2);
INSERT INTO Availability (ProductID, Quantity, StoreID) VALUES (1, 7, 3);
INSERT INTO Availability (ProductID, Quantity, StoreID) VALUES (1, 7, 4);
INSERT INTO Availability (ProductID, Quantity, StoreID) VALUES (1, 0, 5);
INSERT INTO Availability (ProductID, Quantity, StoreID) VALUES (1, 5, 6);
INSERT INTO Availability (ProductID, Quantity, StoreID) VALUES (1, 3, 7);
INSERT INTO Availability (ProductID, Quantity, StoreID) VALUES (1, 2, 8);
INSERT INTO Availability (ProductID, Quantity, StoreID) VALUES (1, 0, 9);
INSERT INTO Availability (ProductID, Quantity, StoreID) VALUES (2, 5, 1);
INSERT INTO Availability (ProductID, Quantity, StoreID) VALUES (2, 7, 2);
INSERT INTO Availability (ProductID, Quantity, StoreID) VALUES (2, 3, 3);
INSERT INTO Availability (ProductID, Quantity, StoreID) VALUES (2, 7, 4);
INSERT INTO Availability (ProductID, Quantity, StoreID) VALUES (2, 12, 5);
INSERT INTO Availability (ProductID, Quantity, StoreID) VALUES (2, 12, 6);
INSERT INTO Availability (ProductID, Quantity, StoreID) VALUES (2, 9, 7);
INSERT INTO Availability (ProductID, Quantity, StoreID) VALUES (2, 9, 8);
INSERT INTO Availability (ProductID, Quantity, StoreID) VALUES (2, 9, 9);
INSERT INTO Availability (ProductID, Quantity, StoreID) VALUES (5, 11, 1);
INSERT INTO Availability (ProductID, Quantity, StoreID) VALUES (5, 3, 2);
INSERT INTO Availability (ProductID, Quantity, StoreID) VALUES (5, 9, 3);
INSERT INTO Availability (ProductID, Quantity, StoreID) VALUES (5, 3, 4);
INSERT INTO Availability (ProductID, Quantity, StoreID) VALUES (5, 9, 5);
INSERT INTO Availability (ProductID, Quantity, StoreID) VALUES (5, 11, 6);
INSERT INTO Availability (ProductID, Quantity, StoreID) VALUES (5, 6, 7);
INSERT INTO Availability (ProductID, Quantity, StoreID) VALUES (5, 3, 8);
INSERT INTO Availability (ProductID, Quantity, StoreID) VALUES (5, 9, 9);
INSERT INTO Availability (ProductID, Quantity, StoreID) VALUES (3, 6, 1);
INSERT INTO Availability (ProductID, Quantity, StoreID) VALUES (3, 7, 2);
INSERT INTO Availability (ProductID, Quantity, StoreID) VALUES (3, 0, 3);
INSERT INTO Availability (ProductID, Quantity, StoreID) VALUES (3, 9, 4);
INSERT INTO Availability (ProductID, Quantity, StoreID) VALUES (3, 5, 5);
INSERT INTO Availability (ProductID, Quantity, StoreID) VALUES (3, 3, 6);
INSERT INTO Availability (ProductID, Quantity, StoreID) VALUES (3, 7, 7);
INSERT INTO Availability (ProductID, Quantity, StoreID) VALUES (3, 8, 8);
INSERT INTO Availability (ProductID, Quantity, StoreID) VALUES (3, 4, 9);
INSERT INTO Availability (ProductID, Quantity, StoreID) VALUES (4, 2, 1);
INSERT INTO Availability (ProductID, Quantity, StoreID) VALUES (4, 2, 2);
INSERT INTO Availability (ProductID, Quantity, StoreID) VALUES (4, 6, 3);
INSERT INTO Availability (ProductID, Quantity, StoreID) VALUES (4, 9, 4);
INSERT INTO Availability (ProductID, Quantity, StoreID) VALUES (4, 0, 5);
INSERT INTO Availability (ProductID, Quantity, StoreID) VALUES (4, 1, 6);
INSERT INTO Availability (ProductID, Quantity, StoreID) VALUES (4, 4, 7);
INSERT INTO Availability (ProductID, Quantity, StoreID) VALUES (4, 7, 8);
INSERT INTO Availability (ProductID, Quantity, StoreID) VALUES (4, 2, 9);

-- Таблица: Brands
CREATE TABLE IF NOT EXISTS Brands
(
    ID      INTEGER PRIMARY KEY AUTOINCREMENT,
    Name    TEXT NOT NULL,
    Country TEXT
);
INSERT INTO Brands (ID, Name, Country) VALUES (1, 'AMD', 'США');
INSERT INTO Brands (ID, Name, Country) VALUES (2, 'Apple', 'США');
INSERT INTO Brands (ID, Name, Country) VALUES (3, 'Asus', 'Тайвань');
INSERT INTO Brands (ID, Name, Country) VALUES (4, 'Bosch', 'Германия');
INSERT INTO Brands (ID, Name, Country) VALUES (5, 'Dexp', 'Россия');
INSERT INTO Brands (ID, Name, Country) VALUES (6, 'Intel', 'США');
INSERT INTO Brands (ID, Name, Country) VALUES (7, 'Haier', 'Китай');
INSERT INTO Brands (ID, Name, Country) VALUES (8, 'Hansa', 'Германия');
INSERT INTO Brands (ID, Name, Country) VALUES (9, 'Honor', 'Китай');
INSERT INTO Brands (ID, Name, Country) VALUES (10, 'Hotpoint-ariston', 'Италия');
INSERT INTO Brands (ID, Name, Country) VALUES (11, 'Lenovo', 'Китай');
INSERT INTO Brands (ID, Name, Country) VALUES (12, 'Lg', 'Южная Корея');
INSERT INTO Brands (ID, Name, Country) VALUES (13, 'Msi', 'Тайвань');
INSERT INTO Brands (ID, Name, Country) VALUES (14, 'Nokia', 'Финляндия');
INSERT INTO Brands (ID, Name, Country) VALUES (15, 'Oppo', 'Китай');
INSERT INTO Brands (ID, Name, Country) VALUES (16, 'Poco', 'Китай');
INSERT INTO Brands (ID, Name, Country) VALUES (17, 'Samsung', 'Южная Корея');
INSERT INTO Brands (ID, Name, Country) VALUES (18, 'Sony', 'Япония');
INSERT INTO Brands (ID, Name, Country) VALUES (19, 'Xiaomi', 'Китай');
INSERT INTO Brands (ID, Name, Country) VALUES (20, 'Zte', 'Китай');

-- Таблица: Cart
CREATE TABLE IF NOT EXISTS Cart
(
    ID         INTEGER PRIMARY KEY AUTOINCREMENT,
    UserID     INTEGER NOT NULL,
    ProductID  INTEGER NOT NULL,
    Price      REAL    NOT NULL,
    Quantity   INTEGER NOT NULL,
    TotalPrice REAL    NOT NULL,
    FOREIGN KEY (UserID) REFERENCES "old_Customers" (ID),
    FOREIGN KEY (ProductID) REFERENCES Products (ID)
);

-- Таблица: Categories
CREATE TABLE IF NOT EXISTS Categories
(
    ID   INTEGER PRIMARY KEY AUTOINCREMENT,
    Name TEXT
);
INSERT INTO Categories (ID, Name) VALUES (1, 'Варочные панели');
INSERT INTO Categories (ID, Name) VALUES (2, 'Ноутбуки');
INSERT INTO Categories (ID, Name) VALUES (3, 'Процессоры');
INSERT INTO Categories (ID, Name) VALUES (4, 'Смартфоны');
INSERT INTO Categories (ID, Name) VALUES (5, 'Стиральные машины');
INSERT INTO Categories (ID, Name) VALUES (6, 'Холодильное оборудование');

-- Таблица: CategoryCharacteristics
CREATE TABLE IF NOT EXISTS CategoryCharacteristics
(
    CategoryID       INTEGER,
    CharacteristicID INTEGER,
    FOREIGN KEY (CategoryID) REFERENCES Categories (ID),
    FOREIGN KEY (CharacteristicID) REFERENCES Characteristics (ID),
    PRIMARY KEY (CategoryID, CharacteristicID)
);
INSERT INTO CategoryCharacteristics (CategoryID, CharacteristicID) VALUES (4, 1);
INSERT INTO CategoryCharacteristics (CategoryID, CharacteristicID) VALUES (4, 2);
INSERT INTO CategoryCharacteristics (CategoryID, CharacteristicID) VALUES (4, 3);
INSERT INTO CategoryCharacteristics (CategoryID, CharacteristicID) VALUES (4, 4);
INSERT INTO CategoryCharacteristics (CategoryID, CharacteristicID) VALUES (4, 5);
INSERT INTO CategoryCharacteristics (CategoryID, CharacteristicID) VALUES (4, 6);
INSERT INTO CategoryCharacteristics (CategoryID, CharacteristicID) VALUES (4, 7);
INSERT INTO CategoryCharacteristics (CategoryID, CharacteristicID) VALUES (1, 2);
INSERT INTO CategoryCharacteristics (CategoryID, CharacteristicID) VALUES (1, 8);
INSERT INTO CategoryCharacteristics (CategoryID, CharacteristicID) VALUES (1, 9);
INSERT INTO CategoryCharacteristics (CategoryID, CharacteristicID) VALUES (1, 10);
INSERT INTO CategoryCharacteristics (CategoryID, CharacteristicID) VALUES (1, 11);
INSERT INTO CategoryCharacteristics (CategoryID, CharacteristicID) VALUES (1, 12);
INSERT INTO CategoryCharacteristics (CategoryID, CharacteristicID) VALUES (1, 13);

-- Таблица: Characteristics
CREATE TABLE IF NOT EXISTS Characteristics
(
    ID          INTEGER PRIMARY KEY AUTOINCREMENT,
    Name        TEXT NOT NULL,
    Description TEXT
);
INSERT INTO Characteristics (ID, Name, Description) VALUES (1, 'Год релиза', 'Год выпуска смартфона');
INSERT INTO Characteristics (ID, Name, Description) VALUES (2, 'Цвет', 'Цвет');
INSERT INTO Characteristics (ID, Name, Description) VALUES (3, 'Количество SIM', 'Количество SIM-карт');
INSERT INTO Characteristics (ID, Name, Description) VALUES (4, 'Диагональ экрана', 'Размер диагонали экрана (дюйм)');
INSERT INTO Characteristics (ID, Name, Description) VALUES (5, 'Версия OC', 'Операционная система');
INSERT INTO Characteristics (ID, Name, Description) VALUES (6, 'Объем оперативной памяти', 'Объем оперативной памяти (GB)');
INSERT INTO Characteristics (ID, Name, Description) VALUES (7, 'Объем памяти', 'Объем встроенной памяти (GB)');
INSERT INTO Characteristics (ID, Name, Description) VALUES (8, 'Тип варочной поверхности', 'Тип варочной поверхности');
INSERT INTO Characteristics (ID, Name, Description) VALUES (9, 'Материал', 'Материал');
INSERT INTO Characteristics (ID, Name, Description) VALUES (10, 'Количество комфорок', 'Количество комфорок (шт)');
INSERT INTO Characteristics (ID, Name, Description) VALUES (11, 'Вид управления', 'Вид управления');
INSERT INTO Characteristics (ID, Name, Description) VALUES (12, 'Мощность подключения', 'Мощность подключения (кВт)');

-- Таблица: Customers
CREATE TABLE IF NOT EXISTS Customers
(
    ID          INTEGER PRIMARY KEY AUTOINCREMENT,
    Name        TEXT        NOT NULL,
    Email       VARCHAR(319),
    PhoneNumber VARCHAR(12) NOT NULL UNIQUE CHECK (LENGTH(PhoneNumber) = 12 AND SUBSTR(PhoneNumber, 1, 2) = '+7'),
    Address     TEXT
);
INSERT INTO Customers (ID, Name, Email, PhoneNumber, Address) VALUES (1, 'John Doe', 'john.doe@example.com', '+79143975194', '123 Main St');
INSERT INTO Customers (ID, Name, Email, PhoneNumber, Address) VALUES (2, 'Jane Smith', 'jane.smith@example.com', '+79143875194', '456 Elm St');
INSERT INTO Customers (ID, Name, Email, PhoneNumber, Address) VALUES (3, 'Bob Johnson', 'bob.johnson@example.com', '+79523875194', '789 Oak St');

-- Таблица: DeliveryMethod
CREATE TABLE IF NOT EXISTS DeliveryMethod
(
    DeliveryID   INTEGER PRIMARY KEY AUTOINCREMENT,
    DeliveryType TEXT    NOT NULL
);
INSERT INTO DeliveryMethod (DeliveryID, DeliveryType) VALUES (1, 'Самовывоз');
INSERT INTO DeliveryMethod (DeliveryID, DeliveryType) VALUES (2, 'Доставка');

-- Таблица: Departments
CREATE TABLE IF NOT EXISTS Departments
(
    DepartmentID   INTEGER PRIMARY KEY,
    DepartmentName TEXT
);

-- Таблица: EmployeePermissions
CREATE TABLE IF NOT EXISTS EmployeePermissions
(
    EmployeePermissionID INTEGER PRIMARY KEY,
    EmployeeID           INTEGER,
    PermissionID         INTEGER,
    FOREIGN KEY (EmployeeID) REFERENCES Employees (EmployeeID),
    FOREIGN KEY (PermissionID) REFERENCES Permissions (PermissionID)
);

-- Таблица: EmployeePositions
CREATE TABLE IF NOT EXISTS EmployeePositions
(
    EmployeePositionID INTEGER PRIMARY KEY AUTOINCREMENT,
    EmployeeID         INTEGER,
    PositionID         INTEGER,
    Status             TEXT,
    DateAssigned       DATE,
    DateRemoved        DATE,
    Salary             INTEGER,
    Rate               REAL,
    FOREIGN KEY (EmployeeID) REFERENCES Employees (EmployeeID),
    FOREIGN KEY (PositionID) REFERENCES Positions (PositionID)
);
INSERT INTO EmployeePositions (EmployeePositionID, EmployeeID, PositionID, Status, DateAssigned, DateRemoved, Salary, Rate) VALUES (1, 3, 3, 'Повышен', '2023-12-04', '2023-12-04', 25000, 1.0);
INSERT INTO EmployeePositions (EmployeePositionID, EmployeeID, PositionID, Status, DateAssigned, DateRemoved, Salary, Rate) VALUES (2, 3, 2, 'Активен', '2023-12-04', NULL, 25000, 2.0);

-- Таблица: Employees
CREATE TABLE IF NOT EXISTS Employees
(
    EmployeeID    INTEGER PRIMARY KEY AUTOINCREMENT,
    FirstName     TEXT        NOT NULL,
    LastName      TEXT        NOT NULL,
    Email         VARCHAR(319),
    PhoneNumber   VARCHAR(12) NOT NULL CHECK (LENGTH(PhoneNumber) = 12 AND SUBSTR(PhoneNumber, 1, 2) = '+7'),
    HireDate      DATE,
    Salary        REAL,
    Status        TEXT DEFAULT 'Активен' CHECK (Status IN ('Активен', 'Уволен')),
    DismissalDate DATE DEFAULT NULL
);
INSERT INTO Employees (EmployeeID, FirstName, LastName, Email, PhoneNumber, HireDate, Salary, Status, DismissalDate) VALUES (1, 'Кирилл', 'Абобов', 'fghjk@mail.ru', '+79835719457', '2023-12-04', NULL, 'Активен', NULL);

-- Таблица: EmployeesDepartments
CREATE TABLE IF NOT EXISTS EmployeesDepartments
(
    EmployeeID   INTEGER,
    DepartmentID INTEGER,
    PRIMARY KEY (EmployeeID, DepartmentID),
    FOREIGN KEY (EmployeeID) REFERENCES Employees (EmployeeID),
    FOREIGN KEY (DepartmentID) REFERENCES Departments (DepartmentID)
);

-- Таблица: FavouriteProducts
CREATE TABLE IF NOT EXISTS "FavouriteProducts"
(
    UserID    INTEGER,
    ProductID INTEGER,
    PRIMARY KEY (UserID, ProductID),
    FOREIGN KEY (ProductID) REFERENCES Products (ID),
    FOREIGN KEY (UserID) REFERENCES Customers (ID)
);

-- Таблица: Invoices
CREATE TABLE IF NOT EXISTS Invoices
(
    InvoiceID       INTEGER PRIMARY KEY AUTOINCREMENT,
    OrderID         INTEGER UNIQUE NOT NULL,
    Amount          INTEGER NOT NULL,
    PaymentStatusID INTEGER NOT NULL,
    PaymentTypeID   INTEGER NOT NULL,
    PaymentMethodID INTEGER NOT NULL,
    FOREIGN KEY (OrderID) REFERENCES "Orders" (OrderID),
    FOREIGN KEY (PaymentStatusID) REFERENCES PaymentStatus (PaymentStatusID),
    FOREIGN KEY (PaymentTypeID) REFERENCES PaymentType (PaymentTypeID),
    FOREIGN KEY (PaymentMethodID) REFERENCES PaymentMethod (PaymentMethodID)
);

-- Таблица: OrderDetails
CREATE TABLE IF NOT EXISTS OrderDetails
(
    OrderDetailID INTEGER PRIMARY KEY AUTOINCREMENT,
    OrderID       INTEGER NOT NULL,
    ProductID     INTEGER NOT NULL,
    Quantity      INTEGER NOT NULL,
    Price         REAL    NOT NULL,
    StatusID      INTEGER NOT NULL DEFAULT 1,
    FOREIGN KEY (OrderID) REFERENCES Orders (OrderID),
    FOREIGN KEY (ProductID) REFERENCES Products (ID),
    FOREIGN KEY (StatusID) REFERENCES OrderStatus (StatusID)
);

-- Таблица: Orders
CREATE TABLE IF NOT EXISTS "Orders"
(
    OrderID    INTEGER PRIMARY KEY AUTOINCREMENT,
    UserID     INTEGER,
    Date       DATE    NOT NULL,
    StatusID   INTEGER NOT NULL DEFAULT 1,
    DeliveryID INTEGER NOT NULL,
    StoreID    INTEGER NOT NULL,
    InvoiceID  INTEGER, EmployeeID INTEGER,
    FOREIGN KEY (UserID) REFERENCES Customers (ID),
    FOREIGN KEY (StatusID) REFERENCES OrderStatus (StatusID),
    FOREIGN KEY (DeliveryID) REFERENCES DeliveryMethod (DeliveryID),
    FOREIGN KEY (StoreID) REFERENCES Stores (ID),
    FOREIGN KEY (InvoiceID) REFERENCES Invoices (InvoiceID)
);

-- Таблица: OrderStatus
CREATE TABLE IF NOT EXISTS OrderStatus
(
    StatusID   INTEGER PRIMARY KEY AUTOINCREMENT,
    StatusName TEXT    NOT NULL
);
INSERT INTO OrderStatus (StatusID, StatusName) VALUES (1, 'Оформлен');
INSERT INTO OrderStatus (StatusID, StatusName) VALUES (2, 'Сборка');
INSERT INTO OrderStatus (StatusID, StatusName) VALUES (3, 'Готов к выдаче');
INSERT INTO OrderStatus (StatusID, StatusName) VALUES (4, 'Выполнен');
INSERT INTO OrderStatus (StatusID, StatusName) VALUES (5, 'Отменён');
INSERT INTO OrderStatus (StatusID, StatusName) VALUES (6, 'Доставляется');

-- Таблица: PaymentMethod
CREATE TABLE IF NOT EXISTS PaymentMethod
(
    PaymentMethodID INTEGER PRIMARY KEY AUTOINCREMENT,
    MethodName      TEXT    NOT NULL
);
INSERT INTO PaymentMethod (PaymentMethodID, MethodName) VALUES (1, 'При получении');
INSERT INTO PaymentMethod (PaymentMethodID, MethodName) VALUES (2, 'При оформлении');

-- Таблица: PaymentStatus
CREATE TABLE IF NOT EXISTS PaymentStatus
(
    PaymentStatusID INTEGER PRIMARY KEY AUTOINCREMENT,
    StatusName      TEXT    NOT NULL
);
INSERT INTO PaymentStatus (PaymentStatusID, StatusName) VALUES (1, 'Оплачено');
INSERT INTO PaymentStatus (PaymentStatusID, StatusName) VALUES (2, 'Не оплачено');

-- Таблица: PaymentType
CREATE TABLE IF NOT EXISTS PaymentType
(
    PaymentTypeID INTEGER PRIMARY KEY AUTOINCREMENT,
    TypeName      TEXT    NOT NULL
);
INSERT INTO PaymentType (PaymentTypeID, TypeName) VALUES (1, 'Наличные');
INSERT INTO PaymentType (PaymentTypeID, TypeName) VALUES (2, 'Карта');
INSERT INTO PaymentType (PaymentTypeID, TypeName) VALUES (3, 'Расчетный счет');

-- Таблица: Permissions
CREATE TABLE IF NOT EXISTS Permissions
(
    PermissionID   INTEGER PRIMARY KEY,
    PermissionName TEXT,
    Description    TEXT
);

-- Таблица: PositionPermissions
CREATE TABLE IF NOT EXISTS PositionPermissions (
    PositionPermissionID INTEGER PRIMARY KEY,
    PositionID INTEGER,
    PermissionID INTEGER,
    FOREIGN KEY (PositionID) REFERENCES Positions(PositionID),
    FOREIGN KEY (PermissionID) REFERENCES Permissions(PermissionID)
);

-- Таблица: Positions
CREATE TABLE IF NOT EXISTS Positions
(
    PositionID   INTEGER PRIMARY KEY,
    PositionName TEXT,
    Description  TEXT
);

-- Таблица: ProductCharacteristics
CREATE TABLE IF NOT EXISTS ProductCharacteristics
(
    ProductID        INTEGER,
    CharacteristicID INTEGER,
    Value            TEXT, -- Значение характеристики для конкретного продукта
    FOREIGN KEY (ProductID) REFERENCES Products (ID),
    FOREIGN KEY (CharacteristicID) REFERENCES Characteristics (ID),
    PRIMARY KEY (ProductID, CharacteristicID)
);
INSERT INTO ProductCharacteristics (ProductID, CharacteristicID, Value) VALUES (1, 1, '2021');
INSERT INTO ProductCharacteristics (ProductID, CharacteristicID, Value) VALUES (1, 2, 'Зеленый');
INSERT INTO ProductCharacteristics (ProductID, CharacteristicID, Value) VALUES (1, 3, '1');
INSERT INTO ProductCharacteristics (ProductID, CharacteristicID, Value) VALUES (1, 4, '6.7');
INSERT INTO ProductCharacteristics (ProductID, CharacteristicID, Value) VALUES (1, 5, 'IOS 15');
INSERT INTO ProductCharacteristics (ProductID, CharacteristicID, Value) VALUES (1, 6, '6');
INSERT INTO ProductCharacteristics (ProductID, CharacteristicID, Value) VALUES (1, 7, '512');
INSERT INTO ProductCharacteristics (ProductID, CharacteristicID, Value) VALUES (2, 1, '2021');
INSERT INTO ProductCharacteristics (ProductID, CharacteristicID, Value) VALUES (2, 2, 'Синий');
INSERT INTO ProductCharacteristics (ProductID, CharacteristicID, Value) VALUES (2, 3, '1');
INSERT INTO ProductCharacteristics (ProductID, CharacteristicID, Value) VALUES (2, 4, '6.7');
INSERT INTO ProductCharacteristics (ProductID, CharacteristicID, Value) VALUES (2, 5, 'IOS 15');
INSERT INTO ProductCharacteristics (ProductID, CharacteristicID, Value) VALUES (2, 6, '6');
INSERT INTO ProductCharacteristics (ProductID, CharacteristicID, Value) VALUES (2, 7, '512');
INSERT INTO ProductCharacteristics (ProductID, CharacteristicID, Value) VALUES (3, 1, '2023');
INSERT INTO ProductCharacteristics (ProductID, CharacteristicID, Value) VALUES (3, 2, 'Белый');
INSERT INTO ProductCharacteristics (ProductID, CharacteristicID, Value) VALUES (3, 3, '1');
INSERT INTO ProductCharacteristics (ProductID, CharacteristicID, Value) VALUES (3, 4, '7.6');
INSERT INTO ProductCharacteristics (ProductID, CharacteristicID, Value) VALUES (3, 5, 'Android 13');
INSERT INTO ProductCharacteristics (ProductID, CharacteristicID, Value) VALUES (3, 6, '12');
INSERT INTO ProductCharacteristics (ProductID, CharacteristicID, Value) VALUES (3, 7, '1024');
INSERT INTO ProductCharacteristics (ProductID, CharacteristicID, Value) VALUES (4, 1, '2023');
INSERT INTO ProductCharacteristics (ProductID, CharacteristicID, Value) VALUES (4, 2, 'Зеленый');
INSERT INTO ProductCharacteristics (ProductID, CharacteristicID, Value) VALUES (4, 3, '2');
INSERT INTO ProductCharacteristics (ProductID, CharacteristicID, Value) VALUES (4, 4, '6.5');
INSERT INTO ProductCharacteristics (ProductID, CharacteristicID, Value) VALUES (4, 5, 'Android');
INSERT INTO ProductCharacteristics (ProductID, CharacteristicID, Value) VALUES (4, 6, '4');
INSERT INTO ProductCharacteristics (ProductID, CharacteristicID, Value) VALUES (4, 7, '128');
INSERT INTO ProductCharacteristics (ProductID, CharacteristicID, Value) VALUES (5, 1, '2023');
INSERT INTO ProductCharacteristics (ProductID, CharacteristicID, Value) VALUES (5, 2, 'Голубой');
INSERT INTO ProductCharacteristics (ProductID, CharacteristicID, Value) VALUES (5, 3, '2');
INSERT INTO ProductCharacteristics (ProductID, CharacteristicID, Value) VALUES (5, 4, '6.67');
INSERT INTO ProductCharacteristics (ProductID, CharacteristicID, Value) VALUES (5, 5, 'Android 12');
INSERT INTO ProductCharacteristics (ProductID, CharacteristicID, Value) VALUES (5, 6, '8');
INSERT INTO ProductCharacteristics (ProductID, CharacteristicID, Value) VALUES (5, 7, '256');
INSERT INTO ProductCharacteristics (ProductID, CharacteristicID, Value) VALUES (6, 2, 'Черный');
INSERT INTO ProductCharacteristics (ProductID, CharacteristicID, Value) VALUES (6, 9, 'Электрическая');
INSERT INTO ProductCharacteristics (ProductID, CharacteristicID, Value) VALUES (6, 10, 'Стеклокерамика');
INSERT INTO ProductCharacteristics (ProductID, CharacteristicID, Value) VALUES (6, 11, '2');
INSERT INTO ProductCharacteristics (ProductID, CharacteristicID, Value) VALUES (6, 12, 'Сенсорное');
INSERT INTO ProductCharacteristics (ProductID, CharacteristicID, Value) VALUES (6, 8, '12');
INSERT INTO ProductCharacteristics (ProductID, CharacteristicID, Value) VALUES (6, 13, '3,2');
INSERT INTO ProductCharacteristics (ProductID, CharacteristicID, Value) VALUES (7, 2, 'Черный');
INSERT INTO ProductCharacteristics (ProductID, CharacteristicID, Value) VALUES (7, 9, 'Индукционная');
INSERT INTO ProductCharacteristics (ProductID, CharacteristicID, Value) VALUES (7, 10, 'Стеклокерамика');
INSERT INTO ProductCharacteristics (ProductID, CharacteristicID, Value) VALUES (7, 11, '4');
INSERT INTO ProductCharacteristics (ProductID, CharacteristicID, Value) VALUES (7, 12, 'Сенсорное');
INSERT INTO ProductCharacteristics (ProductID, CharacteristicID, Value) VALUES (7, 8, '12');
INSERT INTO ProductCharacteristics (ProductID, CharacteristicID, Value) VALUES (7, 13, '7');
INSERT INTO ProductCharacteristics (ProductID, CharacteristicID, Value) VALUES (8, 2, 'Черный');
INSERT INTO ProductCharacteristics (ProductID, CharacteristicID, Value) VALUES (8, 9, 'Электрическая');
INSERT INTO ProductCharacteristics (ProductID, CharacteristicID, Value) VALUES (8, 10, 'Стеклокерамика');
INSERT INTO ProductCharacteristics (ProductID, CharacteristicID, Value) VALUES (8, 11, '4');
INSERT INTO ProductCharacteristics (ProductID, CharacteristicID, Value) VALUES (8, 12, 'Сенсорное');
INSERT INTO ProductCharacteristics (ProductID, CharacteristicID, Value) VALUES (8, 8, '12');
INSERT INTO ProductCharacteristics (ProductID, CharacteristicID, Value) VALUES (8, 13, '7');

-- Таблица: ProductCharacteristicsNew
CREATE TABLE IF NOT EXISTS ProductCharacteristicsNew
(
    ProductCharacteristicID INTEGER PRIMARY KEY AUTOINCREMENT,
    ProductID               INTEGER NOT NULL,
    Characteristics         TEXT, -- JSON

    FOREIGN KEY (ProductID) REFERENCES Products (ID)
);
INSERT INTO ProductCharacteristicsNew (ProductCharacteristicID, ProductID, Characteristics) VALUES (1, 1, '{"Год релиза": 2021, "Цвет": "Зеленый", "Количество SIM": 1, "Диагональ экрана": "6.7", "Версия OC": "IOS 15", "Объем оперативной памяти": 6, "Объем памяти": 512, "Гарантия производителя": 12}');
INSERT INTO ProductCharacteristicsNew (ProductCharacteristicID, ProductID, Characteristics) VALUES (2, 2, '{"Год релиза": 2021, "Цвет": "Синий", "Количество SIM": 1, "Диагональ экрана": "6.7", "Версия OC": "IOS 15", "Объем оперативной памяти": 6, "Объем памяти": 512, "Гарантия производителя": 12}');
INSERT INTO ProductCharacteristicsNew (ProductCharacteristicID, ProductID, Characteristics) VALUES (3, 3, '{"Год релиза": 2023, "Цвет": "Белый", "Количество SIM": 1, "Диагональ экрана": "7.6", "Версия OC": "Android 13", "Объем оперативной памяти": 12, "Объем памяти": 1024, "Гарантия производителя": 12}');
INSERT INTO ProductCharacteristicsNew (ProductCharacteristicID, ProductID, Characteristics) VALUES (4, 4, '{"Год релиза": 2023, "Цвет": "Зеленый", "Количество SIM": 2, "Диагональ экрана": "6.5", "Версия OC": "Android", "Объем оперативной памяти": 4, "Объем памяти": 128, "Гарантия производителя": 12}');
INSERT INTO ProductCharacteristicsNew (ProductCharacteristicID, ProductID, Characteristics) VALUES (5, 5, '{"Год релиза": 2023, "Цвет": "Голубой", "Количество SIM": 2, "Диагональ экрана": "6.67", "Версия OC": "Android 12", "Объем оперативной памяти": 8, "Объем памяти": 256, "Гарантия производителя": 12}');

-- Таблица: Products
CREATE TABLE IF NOT EXISTS Products
(
    ID          INTEGER PRIMARY KEY AUTOINCREMENT,
    SKU         TEXT NOT NULL UNIQUE,
    Name        TEXT NOT NULL,
    Description TEXT,
    Price       REAL,
    BrandID     INTEGER,
    CategoryID  INTEGER,
    FOREIGN KEY (BrandID) REFERENCES Brands (ID),
    FOREIGN KEY (CategoryID) REFERENCES Categories (ID)
);
INSERT INTO Products (ID, SKU, Name, Description, Price, BrandID, CategoryID) VALUES (1, '5041585', 'iPhone 13 Pro Max 512 ГБ', 'Смартфон Apple iPhone 13 Pro Max – стильная и технологичная модель в линейке производителя, одной из примечательных особенностей которой является безрамочный дисплей OLED 6.7 дюйма. Благодаря разрешению 2778x1284 пикселей он способен впечатлять реалистичным изображением с точностью передачи деталей. Корпус мобильного устройства надежно защищен от воздействия влаги и пыли по стандарту IP68, а на передней стороне дополнительно используется покрытие Ceramic Shield для повышения устойчивости к ударам и появлению царапин.
Процессор Apple A15 Bionic с 6-ядрами обеспечивает высокую производительность системы. Основная тройная камера 12+12+12 Мп в дополнении вспышки True Tone, ряда режимов и функций позволяет создавать реалистичные снимки даже в ночное время. На передней стороне предусмотрена камера с датчиком 12 Мп для селфи и видеозвонков. К перечню преимуществ Apple iPhone 13 Pro Max относятся стереодинамики, беспроводные интерфейсы, голосовой помощник Siri, длительное время автономности и поддержка беспроводной зарядки.', 145199.0, 2, 4);
INSERT INTO Products (ID, SKU, Name, Description, Price, BrandID, CategoryID) VALUES (2, '5074142', 'iPhone 13 Pro Max 512 ГБ', 'Смартфон Apple iPhone 13 Pro Max – стильная и технологичная модель в линейке производителя, одной из примечательных особенностей которой является безрамочный дисплей OLED 6.7 дюйма. Благодаря разрешению 2778x1284 пикселей он способен впечатлять реалистичным изображением с точностью передачи деталей. Корпус мобильного устройства надежно защищен от воздействия влаги и пыли по стандарту IP68, а на передней стороне дополнительно используется покрытие Ceramic Shield для повышения устойчивости к ударам и появлению царапин.
Процессор Apple A15 Bionic с 6-ядрами обеспечивает высокую производительность системы. Основная тройная камера 12+12+12 Мп в дополнении вспышки True Tone, ряда режимов и функций позволяет создавать реалистичные снимки даже в ночное время. На передней стороне предусмотрена камера с датчиком 12 Мп для селфи и видеозвонков. К перечню преимуществ Apple iPhone 13 Pro Max относятся стереодинамики, беспроводные интерфейсы, голосовой помощник Siri, длительное время автономности и поддержка беспроводной зарядки.', 145199.0, 2, 4);
INSERT INTO Products (ID, SKU, Name, Description, Price, BrandID, CategoryID) VALUES (3, '5425264', 'Galaxy Z Fold5 1024 ГБ', 'Смартфон Samsung Galaxy Z Fold5 1024 ГБ отличается складной конструкцией и двумя экранами. Шарнирный износостойкий механизм Flex Hinge позволяет открывать, складывать и фиксировать устройство в заданном положении. Металлический корпус с классом защиты IPX8 гарантирует стойкость к попаданию воды и пыли. Основной экран диагональю 7.6 дюйма Dynamic AMOLED 2X передает четкую и красочную картинку. Для удобного просмотра контента и управления устройством в сложенном виде предусмотрен дополнительный экран. Электронное перо S Pen обеспечивает широкие возможности для рисования и создания заметок.', 219999.0, 17, 4);
INSERT INTO Products (ID, SKU, Name, Description, Price, BrandID, CategoryID) VALUES (4, '9985442', 'Samsung Galaxy A24 128 ГБ', 'Смартфон Samsung Galaxy A24 128 ГБ выполнен в корпусе светло-зеленого цвета и отличается изящностью благодаря компактным размерам. В устройстве установлен экран 6.5 дюйма по технологии Super AMOLED, что позволяет оценить реалистичное изображение с глубокими и натуральными оттенками. Аппаратная платформа с процессором MediaTek Helio G99 и 4 ГБ оперативной памяти гарантирует быстродействие системы при работе с приложениями, запуске игр, просмотре мультимедиа.', 22999.0, 17, 4);
INSERT INTO Products (ID, SKU, Name, Description, Price, BrandID, CategoryID) VALUES (5, '5091090', 'POCO X5 Pro 5G 256', 'Смартфон POCO X5 Pro голубого цвета характеризуется высокой производительностью и скоростью работы. Модель поддерживает связь в сети 5G, а 8-ядерный процессор обеспечивает бесперебойную и быструю работу. Устройство имеет память на 256 ГБ, чего достаточно для хранения большого количества данных в высоком разрешении. Корпус устойчив к воздействию пыли, влаги и механическим повреждениям. Дисплей AMOLED диагональю 6.67 дюймов демонстрирует высокую яркость и детализацию.', 34499.0, 16, 4);
INSERT INTO Products (ID, SKU, Name, Description, Price, BrandID, CategoryID) VALUES (6, '1292955', 'DEXP 4M2CTYL/B', 'Электрическая варочная поверхность DEXP 4M2CTYL/B отличается от прочих подобных устройств компактными размерами и наличием 2 конфорок для приготовления пищи. Это позволяет разместить ее даже на самой маленькой кухне. Устройство устанавливается автономно от духового шкафа. Оно состоит из стеклокерамической поверхности. Каждая конфорка оснащена индикатором остаточного тепла: это позволяет доводить блюдо до необходимой консистенции на выключенной плите. Регулировать мощность можно в пределах 9 уровней.', 6899.0, 5, 1);
INSERT INTO Products (ID, SKU, Name, Description, Price, BrandID, CategoryID) VALUES (7, '8153302', 'LG HU641PH', 'Индукционная варочная поверхность LG HU641PH характеризуется простой системой управления, легкой очисткой и минималистским дизайнерским оформлением. Данная модель оснащена 4 зонами нагрева – 2 мощностью 1200 Вт и 2 мощностью 2300 Вт. Таймер позволяет выбрать время приготовления от 1 до 99 минут. Функция Power Boost быстрее нагревает пищу и позволяет ускорить процесс приготовления. Также имеются индикатор остаточного тепла и функция блокировки от детей.', 25599.0, 12, 1);
INSERT INTO Products (ID, SKU, Name, Description, Price, BrandID, CategoryID) VALUES (8, '4885434', 'Samsung NZ64T3516BK/WT', 'Электрическая варочная поверхность Samsung NZ64T3516BK/WT – устройство, при непосредственном участии которого вам под силу реализация даже самой смелой кулинарной задумки. Намереваетесь преподнести к столу сытный плов или овощное рагу? Специально для вок-посуды предусмотрена двухконтурная зона нагрева. Благодаря скошенным углам у хозяек не возникнет трудностей во время плановой очистки домашней ассистентки.', 26999.0, 17, 1);

-- Таблица: Reviews
CREATE TABLE IF NOT EXISTS Reviews
(
    ID         INTEGER PRIMARY KEY AUTOINCREMENT,
    ProductID  INTEGER NOT NULL,
    OrderID    INTEGER DEFAULT NULL,
    ReviewDate DATE,
    ReviewText TEXT    DEFAULT NULL,
    Rating     INTEGER CHECK (Rating BETWEEN 1 AND 5),
    FOREIGN KEY (ProductID) REFERENCES Products (ID),
    FOREIGN KEY (OrderID) REFERENCES Orders (ID)
);
INSERT INTO Reviews (ID, ProductID, OrderID, ReviewDate, ReviewText, Rating) VALUES (1, 1, NULL, '2023-11-06', 'Great product!', 5);
INSERT INTO Reviews (ID, ProductID, OrderID, ReviewDate, ReviewText, Rating) VALUES (2, 1, NULL, '2023-11-06', 'Love it!', 4);
INSERT INTO Reviews (ID, ProductID, OrderID, ReviewDate, ReviewText, Rating) VALUES (3, 1, NULL, '2023-11-06', 'Good', 4);
INSERT INTO Reviews (ID, ProductID, OrderID, ReviewDate, ReviewText, Rating) VALUES (4, 2, NULL, '2023-11-06', 'Nice', 3);
INSERT INTO Reviews (ID, ProductID, OrderID, ReviewDate, ReviewText, Rating) VALUES (5, 2, NULL, '2023-11-06', 'Great', 3);
INSERT INTO Reviews (ID, ProductID, OrderID, ReviewDate, ReviewText, Rating) VALUES (6, 3, NULL, '2023-11-06', 'Nice', 4);
INSERT INTO Reviews (ID, ProductID, OrderID, ReviewDate, ReviewText, Rating) VALUES (7, 3, NULL, '2023-11-06', 'Nice', 4);
INSERT INTO Reviews (ID, ProductID, OrderID, ReviewDate, ReviewText, Rating) VALUES (8, 3, NULL, '2023-11-06', 'Nice', 5);
INSERT INTO Reviews (ID, ProductID, OrderID, ReviewDate, ReviewText, Rating) VALUES (9, 2, NULL, '2023-11-06', 'Nice', 3);

-- Таблица: StoreInvoices
CREATE TABLE IF NOT EXISTS StoreInvoices
(
    InvoiceID       INTEGER PRIMARY KEY AUTOINCREMENT,
    StoreOrderID    INTEGER UNIQUE NOT NULL,
    Sum          INTEGER NOT NULL,
    InvoiceDate     DATE NOT NULL,
    FOREIGN KEY (StoreOrderID) REFERENCES StoreOrders (StoreOrderID)
);

-- Таблица: StoreOrderDetails
CREATE TABLE IF NOT EXISTS StoreOrderDetails
(
    StoreOrderDetailID INTEGER PRIMARY KEY AUTOINCREMENT,
    StoreOrderID INTEGER NOT NULL,
    ProductID INTEGER NOT NULL,
    Quantity INTEGER NOT NULL,
    FOREIGN KEY (StoreOrderID) REFERENCES StoreOrders (StoreOrderID),
    FOREIGN KEY (ProductID) REFERENCES Products (ID)
);
INSERT INTO StoreOrderDetails (StoreOrderDetailID, StoreOrderID, ProductID, Quantity) VALUES (1, 1, 1, 20);
INSERT INTO StoreOrderDetails (StoreOrderDetailID, StoreOrderID, ProductID, Quantity) VALUES (2, 1, 2, 10);

-- Таблица: StoreOrders
CREATE TABLE IF NOT EXISTS StoreOrders
(
    StoreOrderID INTEGER PRIMARY KEY AUTOINCREMENT,
    EmployeeID INTEGER,
    StoreID INTEGER NOT NULL,
    OrderDate DATE NOT NULL,
    Status TEXT NOT NULL,
    FOREIGN KEY (StoreID) REFERENCES Stores (ID),
    FOREIGN KEY (EmployeeID) REFERENCES Employees (EmployeeID)
);
INSERT INTO StoreOrders (StoreOrderID, EmployeeID, StoreID, OrderDate, Status) VALUES (1, 1, 4, '2023-12-04', 'Оформлен');

-- Таблица: Stores
CREATE TABLE IF NOT EXISTS Stores
(
    ID       INTEGER PRIMARY KEY AUTOINCREMENT,
    City     TEXT,
    Street   TEXT,
    Building TEXT,
    Area     TEXT
);
INSERT INTO Stores (ID, City, Street, Building, Area) VALUES (1, 'Владивосток', 'Проспект Красного Знамени', '59', 'Ленинский');
INSERT INTO Stores (ID, City, Street, Building, Area) VALUES (2, 'Владивосток', 'Семеновская', '23', 'Ленинский');
INSERT INTO Stores (ID, City, Street, Building, Area) VALUES (3, 'Владивосток', 'Русская', '46 ст3', 'Первореченский');
INSERT INTO Stores (ID, City, Street, Building, Area) VALUES (4, 'Владивосток', 'Баляева', '35', 'Ленинский');
INSERT INTO Stores (ID, City, Street, Building, Area) VALUES (5, 'Владивосток', 'Фадеева', '1а', 'Первомайский');
INSERT INTO Stores (ID, City, Street, Building, Area) VALUES (6, 'Владивосток', 'Крыгина', '15а', 'Фрунзенский');
INSERT INTO Stores (ID, City, Street, Building, Area) VALUES (7, 'Владивосток', 'Калинина', '275а', 'Первомайский');
INSERT INTO Stores (ID, City, Street, Building, Area) VALUES (8, 'Владивосток', 'Калинина', '8', 'Первомайский');
INSERT INTO Stores (ID, City, Street, Building, Area) VALUES (9, 'Владивосток', 'Проспект 100-летия Владивостока', '66', 'Первореченский');

COMMIT TRANSACTION;
PRAGMA foreign_keys = on;
