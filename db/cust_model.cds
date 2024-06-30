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

