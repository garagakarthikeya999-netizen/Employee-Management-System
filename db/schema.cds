namespace empdb;
using { cuid } from '@sap/cds/common';

entity Employees : cuid {
    firstName  : String(50) not null;
    lastName   : String(50) not null;
    email      : String(100) not null;
    department : String(50);
    salary     : Decimal(12,2);

}