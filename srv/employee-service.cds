using employee.details as db from '../db/data-model';

@path: '/EmployeeSRV'
service EmployeeService {
    entity Employee as projection on db.Employee;
}