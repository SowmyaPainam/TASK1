using { db } from '../db/schema';

service srv {
    @restrict : [
        {
            grant : '*',
            to : 'IsManager'
        },
        {
            grant : ['READ','CREATE'],
            to : 'Employee'
        }
    ]
    @odata.draft.enabled
    entity SalesOrder as projection on db.SalesOrder;
    entity SalesOrderItem as projection on db.SalesOrderItem;

}