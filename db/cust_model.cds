using { managed } from '@sap/cds/common';
namespace custmodel;

entity Computers
{
    key ID : Integer;
    name : String;
    model : String;
    unitprice : Integer;
    stock : Integer;
}

entity Customers
{
    key ID : Integer;
    name : String(100);
    address : String(100);
    phone : String(100);
}

entity Sales : managed
{
    key ID : UUID;
    customerID : Integer;
    computerID : Integer;
    price : Decimal;
}

entity sales_overview as select key sal.ID as salesID,
sal.customerID as customerID,
cust.name as  customername,
cust.phone as customerphone,
cust.address as customeraddress,
com.ID as computerID,
com.name as computername,
sal.price as salesamount


from Sales as sal
left join Customers as cust
on sal.customerID = cust.ID
left join Computers as com
on sal.computerID = com.ID




;


