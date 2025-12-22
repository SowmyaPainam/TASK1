using { Northwind } from './external/Northwind';

service northwind {
    @readonly
    entity Products as projection on Northwind.Products;

    entity Customers as projection on Northwind.Customers;
}
