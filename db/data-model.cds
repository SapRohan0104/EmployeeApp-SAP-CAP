namespace employee.details;

using {reusable.types as types} from './ReusableTypes';
using {
  cuid,
  managed
} from '@sap/cds/common';


@assert.unique: {
  email: [email],
  phone: [phone]
}

entity Employee : cuid, managed {
  fName           : String;
  lName           : String;
  gender          : String;
  DOB             : Date;
  contractStarted : Date;
  email           : types.Email not null; // This Email has to follow the Format and shuld not be null
  phone           : types.PhoneNumber not null;
  address         : Composition of  Address; // <association or Composition name>_<key name>/address_ID will be generated once we add the Association
}

entity Address {
  key ID       : UUID;
      city     : String not null;
      address  : String not null;
      pincode  : Integer not null;
      street   : String;
      landmark : String;
}


/**
 * Coposition: Tight Coupling
 * Association: Loose
 * Employee
 * EmployeeAddress
 * EmployeeSalary
 * Department
 */


// employee.details.EmployeeDetails-Address.csv
// context EmployeeDetails {
//   entity Address : cuid, managed {
//     city     : String not null;
//     address  : String not null;
//     pincode  : Integer not null;
//     street   : String;
//     landmark : String;
//   }
// }
