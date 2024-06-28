using { custmodel as lion } from '../db/cust_model';

service salesoverview
{
    @odata.draft.enabled
    entity Computers as
        projection on lion.Computers;

    @odata.draft.enabled
    entity Customers as
        projection on lion.Customers;

    @odata.draft.enabled
    entity Sales as
        projection on lion.Sales;

    @readonly
    entity sales_overview as
        projection on lion.sales_overview;
}
