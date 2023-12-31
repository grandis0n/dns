# This is an auto-generated Django model module.
# You'll have to do the following manually to clean this up:
#   * Rearrange models' order
#   * Make sure each model has one field with primary_key=True
#   * Make sure each ForeignKey and OneToOneField has `on_delete` set to the desired behavior
#   * Remove `managed = False` lines if you wish to allow Django to create, modify, and delete the table
# Feel free to rename the models, but don't rename db_table values or field names.
from django.db import models


class Availability(models.Model):
    productid = models.ForeignKey('Products', models.DO_NOTHING, db_column='ProductID', blank=True, null=True)  # Field name made lowercase.
    quantity = models.IntegerField(db_column='Quantity', blank=True, null=True)  # Field name made lowercase.
    storeid = models.ForeignKey('Stores', models.DO_NOTHING, db_column='StoreID', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'Availability'


class Brands(models.Model):
    id = models.AutoField(db_column='ID', primary_key=True, blank=True, null=True)  # Field name made lowercase.
    name = models.TextField(db_column='Name')  # Field name made lowercase.
    country = models.TextField(db_column='Country', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'Brands'


class Cart(models.Model):
    id = models.AutoField(db_column='ID', primary_key=True, blank=True, null=True)  # Field name made lowercase.
    userid = models.ForeignKey('OldCustomers', models.DO_NOTHING, db_column='UserID')  # Field name made lowercase.
    productid = models.ForeignKey('Products', models.DO_NOTHING, db_column='ProductID')  # Field name made lowercase.
    price = models.FloatField(db_column='Price')  # Field name made lowercase.
    quantity = models.IntegerField(db_column='Quantity')  # Field name made lowercase.
    totalprice = models.FloatField(db_column='TotalPrice')  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'Cart'


class Categories(models.Model):
    id = models.AutoField(db_column='ID', primary_key=True, blank=True, null=True)  # Field name made lowercase.
    name = models.TextField(db_column='Name', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'Categories'


class Categorycharacteristics(models.Model):
    categoryid = models.OneToOneField(Categories, models.DO_NOTHING, db_column='CategoryID', primary_key=True, blank=True, null=True)  # Field name made lowercase. The composite primary key (CategoryID, CharacteristicID) found, that is not supported. The first column is selected.
    characteristicid = models.ForeignKey('Characteristics', models.DO_NOTHING, db_column='CharacteristicID', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'CategoryCharacteristics'


class Characteristics(models.Model):
    id = models.AutoField(db_column='ID', primary_key=True, blank=True, null=True)  # Field name made lowercase.
    name = models.TextField(db_column='Name')  # Field name made lowercase.
    description = models.TextField(db_column='Description', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'Characteristics'
# Unable to inspect table 'Customers'
# The error was: list index out of range


class Deliverymethod(models.Model):
    deliveryid = models.AutoField(db_column='DeliveryID', primary_key=True, blank=True, null=True)  # Field name made lowercase.
    deliverytype = models.TextField(db_column='DeliveryType')  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'DeliveryMethod'


class Departments(models.Model):
    departmentid = models.AutoField(db_column='DepartmentID', primary_key=True, blank=True, null=True)  # Field name made lowercase.
    departmentname = models.TextField(db_column='DepartmentName', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'Departments'


class Employeepermissions(models.Model):
    employeepermissionid = models.AutoField(db_column='EmployeePermissionID', primary_key=True, blank=True, null=True)  # Field name made lowercase.
    employeeid = models.ForeignKey('Employees', models.DO_NOTHING, db_column='EmployeeID', blank=True, null=True)  # Field name made lowercase.
    permissionid = models.ForeignKey('Permissions', models.DO_NOTHING, db_column='PermissionID', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'EmployeePermissions'


class Employeepositions(models.Model):
    employeepositionid = models.AutoField(db_column='EmployeePositionID', primary_key=True, blank=True, null=True)  # Field name made lowercase.
    employeeid = models.ForeignKey('Employees', models.DO_NOTHING, db_column='EmployeeID', blank=True, null=True)  # Field name made lowercase.
    positionid = models.ForeignKey('Positions', models.DO_NOTHING, db_column='PositionID', blank=True, null=True)  # Field name made lowercase.
    status = models.TextField(db_column='Status', blank=True, null=True)  # Field name made lowercase.
    dateassigned = models.DateField(db_column='DateAssigned', blank=True, null=True)  # Field name made lowercase.
    dateremoved = models.DateField(db_column='DateRemoved', blank=True, null=True)  # Field name made lowercase.
    salary = models.IntegerField(db_column='Salary', blank=True, null=True)  # Field name made lowercase.
    rate = models.FloatField(db_column='Rate', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'EmployeePositions'
# Unable to inspect table 'Employees'
# The error was: list index out of range


class Employeesdepartments(models.Model):
    employeeid = models.OneToOneField('Employees', models.DO_NOTHING, db_column='EmployeeID', primary_key=True, blank=True, null=True)  # Field name made lowercase. The composite primary key (EmployeeID, DepartmentID) found, that is not supported. The first column is selected.
    departmentid = models.ForeignKey(Departments, models.DO_NOTHING, db_column='DepartmentID', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'EmployeesDepartments'


class Favouriteproducts(models.Model):
    userid = models.OneToOneField('Customers', models.DO_NOTHING, db_column='UserID', primary_key=True, blank=True, null=True)  # Field name made lowercase. The composite primary key (UserID, ProductID) found, that is not supported. The first column is selected.
    productid = models.ForeignKey('Products', models.DO_NOTHING, db_column='ProductID', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'FavouriteProducts'


class Invoices(models.Model):
    invoiceid = models.AutoField(db_column='InvoiceID', primary_key=True, blank=True, null=True)  # Field name made lowercase.
    orderid = models.OneToOneField('Orders', models.DO_NOTHING, db_column='OrderID')  # Field name made lowercase.
    amount = models.IntegerField(db_column='Amount')  # Field name made lowercase.
    paymentstatusid = models.ForeignKey('Paymentstatus', models.DO_NOTHING, db_column='PaymentStatusID')  # Field name made lowercase.
    paymenttypeid = models.ForeignKey('Paymenttype', models.DO_NOTHING, db_column='PaymentTypeID')  # Field name made lowercase.
    paymentmethodid = models.ForeignKey('Paymentmethod', models.DO_NOTHING, db_column='PaymentMethodID')  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'Invoices'


class Orderdetails(models.Model):
    orderdetailid = models.AutoField(db_column='OrderDetailID', primary_key=True, blank=True, null=True)  # Field name made lowercase.
    orderid = models.ForeignKey('Orders', models.DO_NOTHING, db_column='OrderID')  # Field name made lowercase.
    productid = models.ForeignKey('Products', models.DO_NOTHING, db_column='ProductID')  # Field name made lowercase.
    quantity = models.IntegerField(db_column='Quantity')  # Field name made lowercase.
    price = models.FloatField(db_column='Price')  # Field name made lowercase.
    statusid = models.ForeignKey('Orderstatus', models.DO_NOTHING, db_column='StatusID')  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'OrderDetails'


class Orderstatus(models.Model):
    statusid = models.AutoField(db_column='StatusID', primary_key=True, blank=True, null=True)  # Field name made lowercase.
    statusname = models.TextField(db_column='StatusName')  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'OrderStatus'


class Orders(models.Model):
    orderid = models.AutoField(db_column='OrderID', primary_key=True, blank=True, null=True)  # Field name made lowercase.
    userid = models.ForeignKey('Customers', models.DO_NOTHING, db_column='UserID', blank=True, null=True)  # Field name made lowercase.
    date = models.DateField(db_column='Date')  # Field name made lowercase.
    statusid = models.ForeignKey(Orderstatus, models.DO_NOTHING, db_column='StatusID')  # Field name made lowercase.
    deliveryid = models.ForeignKey(Deliverymethod, models.DO_NOTHING, db_column='DeliveryID')  # Field name made lowercase.
    storeid = models.ForeignKey('Stores', models.DO_NOTHING, db_column='StoreID')  # Field name made lowercase.
    invoiceid = models.ForeignKey(Invoices, models.DO_NOTHING, db_column='InvoiceID', blank=True, null=True)  # Field name made lowercase.
    employeeid = models.IntegerField(db_column='EmployeeID', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'Orders'


class Paymentmethod(models.Model):
    paymentmethodid = models.AutoField(db_column='PaymentMethodID', primary_key=True, blank=True, null=True)  # Field name made lowercase.
    methodname = models.TextField(db_column='MethodName')  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'PaymentMethod'


class Paymentstatus(models.Model):
    paymentstatusid = models.AutoField(db_column='PaymentStatusID', primary_key=True, blank=True, null=True)  # Field name made lowercase.
    statusname = models.TextField(db_column='StatusName')  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'PaymentStatus'


class Paymenttype(models.Model):
    paymenttypeid = models.AutoField(db_column='PaymentTypeID', primary_key=True, blank=True, null=True)  # Field name made lowercase.
    typename = models.TextField(db_column='TypeName')  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'PaymentType'


class Permissions(models.Model):
    permissionid = models.AutoField(db_column='PermissionID', primary_key=True, blank=True, null=True)  # Field name made lowercase.
    permissionname = models.TextField(db_column='PermissionName', blank=True, null=True)  # Field name made lowercase.
    description = models.TextField(db_column='Description', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'Permissions'


class Positionpermissions(models.Model):
    positionpermissionid = models.AutoField(db_column='PositionPermissionID', primary_key=True, blank=True, null=True)  # Field name made lowercase.
    positionid = models.ForeignKey('Positions', models.DO_NOTHING, db_column='PositionID', blank=True, null=True)  # Field name made lowercase.
    permissionid = models.ForeignKey(Permissions, models.DO_NOTHING, db_column='PermissionID', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'PositionPermissions'


class Positions(models.Model):
    positionid = models.AutoField(db_column='PositionID', primary_key=True, blank=True, null=True)  # Field name made lowercase.
    positionname = models.TextField(db_column='PositionName', blank=True, null=True)  # Field name made lowercase.
    description = models.TextField(db_column='Description', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'Positions'


class Productcharacteristics(models.Model):
    productid = models.OneToOneField('Products', models.DO_NOTHING, db_column='ProductID', primary_key=True, blank=True, null=True)  # Field name made lowercase. The composite primary key (ProductID, CharacteristicID) found, that is not supported. The first column is selected.
    characteristicid = models.ForeignKey(Characteristics, models.DO_NOTHING, db_column='CharacteristicID', blank=True, null=True)  # Field name made lowercase.
    value = models.TextField(db_column='Value', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'ProductCharacteristics'


class Productcharacteristicsnew(models.Model):
    productcharacteristicid = models.AutoField(db_column='ProductCharacteristicID', primary_key=True, blank=True, null=True)  # Field name made lowercase.
    productid = models.ForeignKey('Products', models.DO_NOTHING, db_column='ProductID')  # Field name made lowercase.
    characteristics = models.TextField(db_column='Characteristics', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'ProductCharacteristicsNew'


class Products(models.Model):
    id = models.AutoField(db_column='ID', primary_key=True, blank=True, null=True)  # Field name made lowercase.
    sku = models.TextField(db_column='SKU', unique=True)  # Field name made lowercase.
    name = models.TextField(db_column='Name')  # Field name made lowercase.
    description = models.TextField(db_column='Description', blank=True, null=True)  # Field name made lowercase.
    price = models.FloatField(db_column='Price', blank=True, null=True)  # Field name made lowercase.
    brandid = models.ForeignKey(Brands, models.DO_NOTHING, db_column='BrandID', blank=True, null=True)  # Field name made lowercase.
    categoryid = models.ForeignKey(Categories, models.DO_NOTHING, db_column='CategoryID', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'Products'


class Reviews(models.Model):
    id = models.AutoField(db_column='ID', primary_key=True, blank=True, null=True)  # Field name made lowercase.
    productid = models.ForeignKey(Products, models.DO_NOTHING, db_column='ProductID')  # Field name made lowercase.
    orderid = models.ForeignKey(Orders, models.DO_NOTHING, db_column='OrderID', to_field='ID', blank=True, null=True)  # Field name made lowercase.
    reviewdate = models.DateField(db_column='ReviewDate', blank=True, null=True)  # Field name made lowercase.
    reviewtext = models.TextField(db_column='ReviewText', blank=True, null=True)  # Field name made lowercase.
    rating = models.IntegerField(db_column='Rating', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'Reviews'


class Storeinvoices(models.Model):
    invoiceid = models.AutoField(db_column='InvoiceID', primary_key=True, blank=True, null=True)  # Field name made lowercase.
    storeorderid = models.OneToOneField('Storeorders', models.DO_NOTHING, db_column='StoreOrderID')  # Field name made lowercase.
    sum = models.IntegerField(db_column='Sum')  # Field name made lowercase.
    invoicedate = models.DateField(db_column='InvoiceDate')  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'StoreInvoices'


class Storeorderdetails(models.Model):
    storeorderdetailid = models.AutoField(db_column='StoreOrderDetailID', primary_key=True, blank=True, null=True)  # Field name made lowercase.
    storeorderid = models.ForeignKey('Storeorders', models.DO_NOTHING, db_column='StoreOrderID')  # Field name made lowercase.
    productid = models.ForeignKey(Products, models.DO_NOTHING, db_column='ProductID')  # Field name made lowercase.
    quantity = models.IntegerField(db_column='Quantity')  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'StoreOrderDetails'


class Storeorders(models.Model):
    storeorderid = models.AutoField(db_column='StoreOrderID', primary_key=True, blank=True, null=True)  # Field name made lowercase.
    employeeid = models.ForeignKey('Employees', models.DO_NOTHING, db_column='EmployeeID', blank=True, null=True)  # Field name made lowercase.
    storeid = models.ForeignKey('Stores', models.DO_NOTHING, db_column='StoreID')  # Field name made lowercase.
    orderdate = models.DateField(db_column='OrderDate')  # Field name made lowercase.
    status = models.TextField(db_column='Status')  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'StoreOrders'


class Stores(models.Model):
    id = models.AutoField(db_column='ID', primary_key=True, blank=True, null=True)  # Field name made lowercase.
    city = models.TextField(db_column='City', blank=True, null=True)  # Field name made lowercase.
    street = models.TextField(db_column='Street', blank=True, null=True)  # Field name made lowercase.
    building = models.TextField(db_column='Building', blank=True, null=True)  # Field name made lowercase.
    area = models.TextField(db_column='Area', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'Stores'
