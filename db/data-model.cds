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
  email           : types.Email not null;
  phone           : types.PhoneNumber not null;
  address         : Composition of many Address
                      on address.employee = $self;
}

entity Address : cuid {
  city     : String not null;
  address  : String not null;
  pincode  : Integer not null;
  street   : String;
  landmark : String;
  employee : Association to Employee;
}
