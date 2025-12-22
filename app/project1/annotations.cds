using northwind as service from '../../srv/northwind';
using from '../../srv/srv';
using from '../../db/schema';

annotate srv.SalesOrder with @(
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Value : ID,
            Label : 'ID',
        },
        {
            $Type : 'UI.DataField',
            Value : CustomerName,
            Label : 'CustomerName',
        },
        {
            $Type : 'UI.DataField',
            Value : OrderNo,
            Label : 'OrderNo',
        },
        {
            $Type : 'UI.DataField',
            Value : TotalAmount,
            Label : 'TotalAmount',
        },
        {
            $Type : 'UI.DataField',
            Value : Status,
            Label : 'Status',
        },
        {
            $Type : 'UI.DataField',
            Value : Items.ID,
            Label : 'ID',
        },
        {
            $Type : 'UI.DataField',
            Value : Items.ProductName,
            Label : 'ProductName',
        },
        {
            $Type : 'UI.DataField',
            Value : Items.Quantity,
            Label : 'Quantity',
        },
        {
            $Type : 'UI.DataField',
            Value : Items.Price,
            Label : 'Price',
        },
    ],
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'Orders',
            ID : 'Orders',
            Target : 'Items/@UI.LineItem#Orders',
        },
    ],
);

annotate srv.SalesOrderItem with @(
    UI.LineItem #Orders : [
        {
            $Type : 'UI.DataField',
            Value : ID,
            Label : 'ID',
        },
        {
            $Type : 'UI.DataField',
            Value : ProductName,
            Label : 'ProductName',
        },
        {
            $Type : 'UI.DataField',
            Value : Quantity,
            Label : 'Quantity',
        },
        {
            $Type : 'UI.DataField',
            Value : Price,
            Label : 'Price',
        },
    ],
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'Item',
            ID : 'Item',
            Target : '@UI.FieldGroup#Item',
        },
    ],
    UI.FieldGroup #Item : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : salesOrder.ID,
                Label : 'ID',
            },
            {
                $Type : 'UI.DataField',
                Value : salesOrder.CustomerName,
                Label : 'CustomerName',
            },
            {
                $Type : 'UI.DataField',
                Value : salesOrder.OrderNo,
                Label : 'OrderNo',
            },
            {
                $Type : 'UI.DataField',
                Value : salesOrder.Status,
                Label : 'Status',
            },
            {
                $Type : 'UI.DataField',
                Value : salesOrder.TotalAmount,
                Label : 'TotalAmount',
            },
        ],
    },
);

