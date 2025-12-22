namespace db;

using { cuid, managed } from '@sap/cds/common';

entity SalesOrder : cuid, managed {
    @mandatory
    OrderNo        : String(20);

    @mandatory
    CustomerName   : String(100);

    TotalAmount    : Decimal(15,2);
    Status         : String(20);

    Items          : Association to many SalesOrderItem
                        on Items.salesOrder = $self;
}

entity SalesOrderItem : cuid, managed {
    @mandatory
    ProductName    : String(100);

    Quantity       : Integer;
    Price          : Decimal(15,2);

    salesOrder     : Association to SalesOrder;
}
