using { custmodel as lion } from '../db/cust_model';

  //@core.compute: True 

// extend  projection custmodel.Sales_overview {

// virtual lowselling   : String ,
// virtual intermediate : String ,
// virtual highend      : String 


// }

// extend custmodel.Sales_overview with {

//     virtual lowselling    : String;
//      virtual intermediate : String ;
//     // virtual highend       : String;
// }

//error message?

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
        projection on  lion.Sales_overview;
}

