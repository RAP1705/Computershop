using { custmodel as lion } from '../db/cust_model';

//  @core.compute: false 

extend  custmodel.Sales_overview with {
 
virtual lowselling   : String ;
virtual intermediate : String ;
virtual highend      : String

}


service salesoverview1
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
    entity Sales_overview as
        select from lion.Sales_overview;
}

