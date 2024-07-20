const cds = require ('@sap/cds');
const console = require ('console');
const { watch } = require('fs');
const logger = cds.log ('mycaplogger');

module.exports = cds.service.impl(function (){

this.after  ('each','Sales_overview', (results, req) => {
 logger (results);
    
          if (results.salesamount  < 50.0  ) {
                    results.lowselling = "too low"

}  else if (results.salesamount  > 50.0 & results.salesamount  < 1000.0) 
                   { results.intermediate = "Going good Charlie"} 
            
           else results.highend = "Expensive items"

//Call the store procedure        

//call storeprocedure()

    });


//     let query = SELECT.from('')

//     if ( Sales_overview.salesamount < 50  ) {
//         results.lowselling = True
// }  else if (Sales_overview.salesamount > 50 & Sales_overview.salesamount > 1000) 
//        { results.intermediate = "Going good Charlie"} 

// else results.highend = "Expensive items"

   


});
