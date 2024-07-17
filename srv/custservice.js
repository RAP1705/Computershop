const cds = require ('@sap/cds');
const console = require ('console');
//const logger = cds.logger ('mycaplogger');



this.after = ('EACH','Sales_overview', (results, req) => {
// logger (results);
    
          if (results.salesamount  < 50  ) {
                    results.lowselling = "too low"

}  else if (results.  > 50 & results.salesamount  > 1000) 
                   { results.intermediate = "Going good Charlie"} 
            
           else results.highend = "Expensive items"

           
    });

//     let query = SELECT.from('')

//     if ( Sales_overview.salesamount < 50  ) {
//         results.lowselling = True
// }  else if (Sales_overview.salesamount > 50 & Sales_overview.salesamount > 1000) 
//        { results.intermediate = "Going good Charlie"} 

// else results.highend = "Expensive items"

   





