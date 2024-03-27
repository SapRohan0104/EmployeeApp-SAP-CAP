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
}
